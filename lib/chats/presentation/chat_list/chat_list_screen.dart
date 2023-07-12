import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/models.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/bloc/chat_bloc_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/widgets/chat_list_widget.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/string_extensions.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/theme/app_colors.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import 'package:search_page/search_page.dart';


@RoutePage()
class ChatListScreen extends StatefulWidget {
  ChatListScreen({
    super.key,
  });

  static const routeName = "chat-list";

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  late ChatBlocBloc chatbloc;
  @override
  void initState() {
    chatbloc = context.read<ChatBlocBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBlocBloc, ChatBlocState>(
      bloc: chatbloc..add(GetUserData()),
      builder: (context, state) {
        if (state.status == StateStatus.successGetUserData ||
            state.status == StateStatus.getChatListSuccess  ) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: AppColors.fbBlue,
                title: "UserID:${state.userData!.username}"
                    .toSubTitle(color: AppColors.white),
              ),
              body: ChatListWidget(userid: state.userData!.id.toString(),));
        } else {
          return Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  void _showSearch(BuildContext context, List<UserModel> users) {
    showSearch(
      context: context,
      delegate: SearchPage<UserModel>(
        items: users,
        searchLabel: 'Search people',
        suggestion: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.search,
                size: 25.0,
                color: Colors.grey,
              ),
              Text(
                'Search users by username',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        failure: const Center(
          child: Text(
            'No person found :(',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        filter: (user) => [
          user.email,
        ],
        builder: (user) => ListTile(
          leading: const Icon(Icons.account_circle, size: 50.0),
          title: Text(user.username),
          subtitle: Text(user.email),
          onTap: () {
            // /// selected user
            // context.read<ChatBloc>().add(UserSelected(user));

            // /// push to chat screen
            // Navigator.of(context).pushNamed(ChatScreen.routeName);
          },
        ),
      ),
    );
  }
}
