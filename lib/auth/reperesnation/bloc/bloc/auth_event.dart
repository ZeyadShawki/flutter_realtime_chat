// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthEvent {}

class LoginEvent extends AuthEvent {
  LoginModel loginModel;
  LoginEvent({
    required this.loginModel,
  });
}
