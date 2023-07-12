// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/login_screen/dashboard_screen.dart'
    as _i1;
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/login_screen/login_screen.dart'
    as _i2;
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart'
    as _i7;
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat/chat_screen.dart'
    as _i4;
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat_list/chat_list_screen.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    ChatListRoute.name: (routeData) {
      final args = routeData.argsAs<ChatListRouteArgs>(
          orElse: () => const ChatListRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ChatListScreen(key: args.key),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ChatScreen(
          key: args.key,
          userid: args.userid,
          chat: args.chat,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatListScreen]
class ChatListRoute extends _i5.PageRouteInfo<ChatListRouteArgs> {
  ChatListRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ChatListRoute.name,
          args: ChatListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const _i5.PageInfo<ChatListRouteArgs> page =
      _i5.PageInfo<ChatListRouteArgs>(name);
}

class ChatListRouteArgs {
  const ChatListRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'ChatListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ChatScreen]
class ChatRoute extends _i5.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i6.Key? key,
    required String userid,
    required _i7.ChatEntity chat,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            userid: userid,
            chat: chat,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i5.PageInfo<ChatRouteArgs> page =
      _i5.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.userid,
    required this.chat,
  });

  final _i6.Key? key;

  final String userid;

  final _i7.ChatEntity chat;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, userid: $userid, chat: $chat}';
  }
}
