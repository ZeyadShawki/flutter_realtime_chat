// ignore_for_file: depend_on_referenced_packages, implementation_imports

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:either_dart/src/either.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_message_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/remote_data_source/base_remote_data_source.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/base_repo.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/error/failure.dart';
import 'package:injectable/injectable.dart' as injectable;

import '../model/chat_message_model.dart';

@injectable.Order(-2)
@injectable.Singleton(as: BaseChatRepostery)  

class ChatRepostery  extends BaseChatRepostery {
  final BaseRemoteDataSource baseChatRemoteDataSource;

  ChatRepostery(this.baseChatRemoteDataSource);
  
  @override
  Future<Either<Failure, ChatEntity>> createChat(CreateChatRequest request)async {
     try {
        final token = await baseChatRemoteDataSource.createChat(request);
        return Right(token);
      } on Failure catch (e) {
        return Left(e);
      }
  }
  
  @override
  Future<Either<Failure, List<ChatEntity>>> getChatList() async{
     try {
        final token = await baseChatRemoteDataSource.getChats();
        return Right(token);
      } on Failure catch (e) {
        return Left(e);
      }
  }
  
  @override
  Future<Either<Failure, List<ChatMessageEntity>?>> getSingleChat(int chatId) async{
    try {
      final token = await baseChatRemoteDataSource.getSingleChat(chatId);
      return Right(token);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendMessage(CreateChatMessageRequest request) async{
    try {
      final token = await baseChatRemoteDataSource.sendMessage(request);
      return Right(token);
    } on Failure catch (e) {
      return Left(e);
    }
  }
 

}