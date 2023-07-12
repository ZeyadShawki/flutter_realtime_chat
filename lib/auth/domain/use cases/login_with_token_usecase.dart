import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/register_model/registermodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/base_repo.dart';
import 'package:injectable/injectable.dart' as injectable;

import 'package:either_dart/either.dart';

import '../../../core/error/failure.dart';
import '../../data/model/user_model/user_model.dart';

@injectable.Order(-2)
@injectable.Singleton()
class LoginWithTokenUseCase {
  final BaseAuthRepo baseAuthRepo;

  LoginWithTokenUseCase(this.baseAuthRepo);
  Future<Either<Failure, UserModel>> call(String parameters) async {
    return await baseAuthRepo.loginWithToken(parameters);
  }
}
