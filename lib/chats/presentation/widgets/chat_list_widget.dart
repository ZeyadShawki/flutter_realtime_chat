import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/bloc/chat_bloc_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat/chat_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/auto_route/auto_route.gr.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/formatting.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/screen_util_extension.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/extensions/string_extensions.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/theme/animated_fade_widget.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListWidget extends StatefulWidget {
  const ChatListWidget({super.key, required this.userid});
  final String userid;
  @override
  State<ChatListWidget> createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  late ChatBlocBloc chatbloc;
  @override
  void initState() {
    chatbloc = context.read<ChatBlocBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBlocBloc, ChatBlocState>(
      bloc: chatbloc..add(GetChatList()),
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.chatState == StateStatus.getChatListSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.chats.length,
            itemBuilder: (context, index) => AnimatedFadeWidget(
              onTap: () {
                context.router.push(ChatRoute(userid: widget.userid,
                chat: state.chats[index]));
              },
              child: Container(
                  padding: REdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(height: 50, 'assets/images/profile.png'),
                      20.toSizedBoxHorizontal,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.chats[index].name!
                              .toSubTitle(color: AppColors.fbBlue),
                          10.toSizedBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 130,
                                child:( state.chats[index].lastMessage!=null? state.chats
                                [index].lastMessage!.message:'...')
                                    .toSubTitle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 14,
                                        color: AppColors.black55),
                              ),
                              30.toSizedBox,
                           ( state.chats[index].lastMessage!=null? 
                                   utcToLocal(
                                      state.chats[index].lastMessage!.createdAt):'')
                                  .toSubTitle(
                                      fontSize: 10, color: AppColors.black55),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          );
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
}
