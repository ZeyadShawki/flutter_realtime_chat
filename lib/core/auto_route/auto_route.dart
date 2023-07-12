import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat/chat_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat_list/chat_list_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/auto_route/auth_guard.dart';

import 'auto_route.gr.dart';
//flutter pub run build_runner build --delete-conflicting-outputs
//flutter packages pub run build_runner watch

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          initial: true,
          guards: [AuthGuard()],
          page: LoginRoute.page,
        ),
        AutoRoute(page: ChatListRoute.page),
        AutoRoute(page:ChatRoute.page),

        AutoRoute(page: DashboardRoute.page),
      ];
}
