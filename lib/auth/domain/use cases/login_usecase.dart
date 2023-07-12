// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/base_repo.dart';
import 'package:injectable/injectable.dart' as injectable;

import 'package:either_dart/either.dart';



import '../../../core/error/failure.dart';

@injectable.Order(-2)
@injectable.Singleton()
class LoginUseCase {
  final BaseAuthRepo baseAuthRepo;

  LoginUseCase(this.baseAuthRepo);
  Future<Either<Failure, String>> call(
      LoginModel parameters) async {
    return await baseAuthRepo.login(parameters);
  }

}