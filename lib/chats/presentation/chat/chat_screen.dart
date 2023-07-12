import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_message_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_message_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/di/dependency_config.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/formatting.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/string_extensions.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../core/theme/app_colors.dart';
import '../chat_sesion_bloc/bloc/chat_session_bloc.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.userid, required this.chat});
  final String userid;
  final ChatEntity chat;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late ChatSessionBloc chatbloc;
  @override
  void initState() {
    initPusher(
      widget.chat.id,
    );
    chatbloc = context.read<ChatSessionBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatSessionBloc, ChatSessionState>(
      bloc: chatbloc..add(getChatMssages(widget.chat.id)),
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.state == chatState.getChatMsssagesSuccess ||
            state.state == chatState.refreshMessges) {
          log('kosy');
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.fbBlue,
              title: widget.chat.name!.toSubTitle(color: AppColors.white),
            ),
            body: DashChat(
                currentUser: ChatUser(id: widget.userid),
                onSend: (message) {
                  chatbloc.add(sendMessage(CreateChatMessageRequest(
                      chatId:widget.chat.id,
                      message: message.text)));
                },
                messages: mapChatMessages(messages: state.messages!)),
          );
        } else {
          return Scaffold(
              body: Center(
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }

  initPusher(
    int chatid,
  ) async {
    PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
    try {
      await pusher.init(
        apiKey: '',
        cluster: '',
        onConnectionStateChange: (currentState, previousState) {},
        onError: (message, code, error) {},
        onSubscriptionSucceeded: (channelName, data) {},
        onEvent: (event) {
          final Map<String, dynamic> mapp = json.decode(event.data);
          log('5555555');
          // ignore: invalid_use_of_visible_for_testing_member

          log('aaaaaaaaa');
          chatbloc.add(refreshMessagesEvent(mapp['message']));

          // log(state.messages.toString());
        },
        onSubscriptionError: (message, error) {},
        onDecryptionFailure: (event, res) {},
        onMemberAdded: (event, mem) {},
        onMemberRemoved: (event, mem) {},
        // authEndpoint: "<Your Authendpoint>",
        // onAuthorizer: onAuthorizer
      );
      await pusher.subscribe(channelName: 'chat.$chatid');
      await pusher.connect();
    } catch (e) {
      print("ERROR: $e");
    }
  }

  List<ChatMessage> mapChatMessages(
      {required List<ChatMessageEntity>? messages}) {
    if (messages == null) {
      return [];
    }
    List<ChatMessage> chatsss = [];
    for (var element in messages) {
      chatsss.add(ChatMessage(
          text: element.message,
          user: ChatUser(
              firstName: element.user!.username,
              id: element.user!.id.toString()),
          createdAt: parseDateTime(element.createdAt)));
    }
    return chatsss;
  }
}
