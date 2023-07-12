part of 'auth_bloc.dart';


abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final String token;

  const LoginSuccess({required this.token});

  @override
  List<Object> get props => [token];
}

class LoginError extends AuthState {
  final String message;

  const LoginError({required this.message});

  @override
  List<Object> get props => [message];
}


