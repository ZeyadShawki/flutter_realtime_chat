 // ignore_for_file: depend_on_referenced_packages

 import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_message_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/error/failure.dart';

import '../data/model/chat_message_model.dart';
import '../data/model/chat_model.dart';
import '../data/model/requests/create_chat_request.dart';
import 'package:either_dart/either.dart';
abstract class    BaseChatRepostery {


      Future<Either<Failure,ChatEntity>> createChat(CreateChatRequest request);
  Future<Either<Failure, List<ChatEntity>>> getChatList();
  Future<Either<Failure, List<ChatMessageEntity>?>> getSingleChat(int chatId);
  Future<Either<Failure, ChatMessageEntity>> sendMessage(CreateChatMessageRequest request);

  }