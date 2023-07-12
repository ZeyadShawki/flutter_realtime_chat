// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_usecase.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.loginUseCase) : super(AuthInitial()) {
    on<LoginEvent>(_login);
  }

  final LoginUseCase loginUseCase;


  
  


  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit)async {
     emit(LoginLoading());
     final resp=await loginUseCase.call(event.loginModel);
     resp.fold((left) {
      emit(LoginError(message: left.message));
     }, (right)  {
      
      emit(LoginSuccess(token: right));
      
       
      }
     
     );
  }
}
