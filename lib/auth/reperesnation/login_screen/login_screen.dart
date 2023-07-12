import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/models.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/register_model/registermodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/register_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/bloc/bloc/auth_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/login_screen/dashboard_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat_list/chat_list_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/auto_route/auto_route.gr.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/di/dependency_config.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late AuthBloc bloc;
  final AppPreferences _appPreferences = getIt<AppPreferences>();
  @override
  void initState() {
    super.initState();
    bloc = context.read<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return FlutterLogin(
          title: 'login',

          // logo: AssetImage('assets/images/ecorp-lightblue.png'),
          onLogin: _authUser,
          onSignup: _authSignup,
          additionalSignupFields: [
            UserFormField(
                displayName: 'username',
                userType: LoginUserType.name,
                keyName: 'username')
          ],
          onSubmitAnimationCompleted: () {

            context.router.popAndPush(ChatListRoute());
          },
          onRecoverPassword: (String) {},
        );
      },
    );
    ;
  }

  Future<String?> _authSignup(SignupData data) async {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    log(data.toString());
    final resp = await getIt<RegisteruseCase>().call(RegisterModel(
        username: data.additionalSignupData!['username']!,
        confPassword: data.password!,
        email: data.name!,
        password: data.password!));

    final state = resp.fold((left) {
      return left.message;
    }, (right) async {
      log(right);
      await _appPreferences.saveToken(right);
      return null;
    });
    return 'error';
  }

  Future<String?> _authUser(LoginData data) async {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    final resp = await getIt<LoginUseCase>()
        .call(LoginModel(email: data.name, password: data.password));

    final state = resp.fold((left) {
      return left.message;
    }, (right) {
      log(right);
      _appPreferences.saveToken(right);

      return null;
    });
    log(state.toString());
    return state;
  }
}
