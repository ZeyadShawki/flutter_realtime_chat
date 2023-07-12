// ignore_for_file: public_member_api_docs, sort_constructors_first, implementation_imports
// ignore: depend_on_referenced_packages
import 'package:either_dart/src/either.dart';

import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/register_model/registermodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/user_model/user_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/base_repo.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/error/failure.dart';
import 'package:injectable/injectable.dart' as injectable;

import '../remote_data_source/remote_data_source.dart';

@injectable.Order(-2)
@injectable.Singleton(as: BaseAuthRepo)  
class AuthRepostery extends BaseAuthRepo {
  

  
 final BaseAuthRemoteDataSource baseAuthRepo;
  AuthRepostery({
    required this.baseAuthRepo,
  });

  @override
  Future<Either<Failure, String>> login(LoginModel loginModel) async{
      try {
        final token = await baseAuthRepo.login(loginModel);
        return Right(token);
      } on Failure catch (e) {
        return Left(e);
      }
   
  }

  @override
  Future<Either<Failure, UserModel>> loginWithToken(String token)async {
      try {
        final isVal = await baseAuthRepo.loginWithToken(token);
        return Right(isVal);
      } on Failure catch (e) {
        return Left(e);
      }
  }

  @override
  Future<Either<Failure, void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> register(RegisterModel registerModel)async {
     try {
        final token = await baseAuthRepo.register(registerModel);
        return Right(token);
      } on Failure catch (e) {
        return Left(e);
      }
  }
  


}
