import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/auto_route/auto_route.gr.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/di/dependency_config.dart';

import '../../auth/domain/use cases/login_with_token_usecase.dart';
import '../app-preferances/app_preferances.dart';
import '../app-preferances/app_preferances.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final apppref = getIt<AppPreferences>();
    final loginusecase = getIt<LoginWithTokenUseCase>();
    final tok = apppref.getPushToken();

    if (tok != null && tok != '') {
      final islogged = await loginusecase.call(tok);
      islogged.fold((left) {
        resolver.next(true);
      }, (right) {
        resolver.redirect(ChatListRoute());
      });
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.next(true);
    }
  }
}
