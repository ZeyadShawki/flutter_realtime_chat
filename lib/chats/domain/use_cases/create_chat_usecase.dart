import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/base_repo.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/remote_data_source/base_remote_data_source.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/base_repo.dart';
import 'package:injectable/injectable.dart' as injectable;

import 'package:either_dart/either.dart';

import '../../../core/error/failure.dart';
import '../../data/model/requests/create_chat_request.dart';

@injectable.Order(-2)
@injectable.Singleton()
class CreateChatUseCase {
  final BaseChatRepostery baseRepo;

  CreateChatUseCase(this.baseRepo);
  Future<Either<Failure, ChatEntity>> call(CreateChatRequest parameters) async {
    return await baseRepo.createChat(parameters);
  }
}
