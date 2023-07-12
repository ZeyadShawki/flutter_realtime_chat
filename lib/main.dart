import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/remote_data_source/remote_data_source.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/repo/repostery.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/bloc/bloc/auth_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/login_screen/login_screen.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/create_chat_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/get_single_chat_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/bloc/chat_bloc_bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat_sesion_bloc/bloc/chat_session_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'chats/data/model/requests/create_chat_request.dart';
import 'chats/domain/use_cases/get_chat_list_usecase.dart';
import 'core/auto_route/auto_route.dart';
import 'core/di/dependency_config.dart';

void main() async {
  // ignore: unused_local_variable
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
//  final getChats=getIt<GetSingleChatUsecase>();


  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _appRouter = AppRouter();            

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>getIt<AuthBloc>()),
                BlocProvider(create: (context)=>getIt<ChatBlocBloc>()),
                BlocProvider(create: (context)=>getIt<ChatSessionBloc>()),

      ],
      child: ScreenUtilInit(
        builder: ((context, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // home: LoginScreen()\
            routerConfig: _appRouter.config(),
            )),
      ),
    );
  }
}
