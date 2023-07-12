import 'package:equatable/equatable.dart';
 const noInternetConnection='No Internet connection';
class Failure extends Equatable {
  final String message;
  final int errorCode;
  const Failure(this.errorCode ,this.message);

  @override
  List<Object> get props => [message];
}

