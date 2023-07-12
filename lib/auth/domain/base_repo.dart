import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/register_model/registermodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/user_model/user_model.dart';
import 'package:either_dart/either.dart';
import '../../core/error/failure.dart';
import '../data/model/app_response.dart';

abstract class BaseAuthRepo{
  Future<Either<Failure,String>> register(RegisterModel registerModel);
  
  Future<Either<Failure, String>> login (LoginModel loginModel);
  Future<Either<Failure, UserModel>> loginWithToken(String token);
  Future<Either<Failure, void>> logout();

}