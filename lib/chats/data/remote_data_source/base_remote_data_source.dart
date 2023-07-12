import 'dart:developer';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:dio/dio.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_message_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_message_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/di/dependency_config.dart';
import 'package:injectable/injectable.dart' as injectable;

import '../../../core/dio/dio_client.dart';
import '../../../core/endpoints/endpoints.dart';
import '../../../core/error/failure.dart';
import '../model/requests/create_chat_request.dart';

abstract class BaseRemoteDataSource {
  Future<List<ChatEntity>> getChats();
  Future<ChatEntity> createChat(CreateChatRequest request);
  Future<ChatMessageEntity> sendMessage(CreateChatMessageRequest request);

  Future<List<ChatMessageEntity>?> getSingleChat(int chatId);
}

@injectable.Order(-3)
@injectable.Singleton(as: BaseRemoteDataSource)
class ChatRemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<ChatEntity> createChat(CreateChatRequest request) async {
    final pref = getIt<AppPreferences>();
    try {
      final Dio dio = DioClient.createBarierDio(pref.getPushToken()!);

      final resp = await dio.post(Endpoints.createChat, data: request.toJson());
      log(resp.toString());
      if (resp.data['statusCode'] == 200) {
        return ChatEntity.fromJson(resp.data['data']);
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }

  @override
  Future<List<ChatEntity>> getChats() async {
    final pref = getIt<AppPreferences>();
    try {
      final Dio dio = DioClient.createBarierDio(pref.getPushToken()!);

      final resp = await dio.get(
        Endpoints.createChat,
      );
      log(resp.toString());
      List<ChatEntity> chats = [];
      if (resp.data['statusCode'] == 200) {
        print('///////');
        print(resp.data['data']);
        chats = (resp.data['data'] as List<dynamic>)
            .map((e) => ChatEntity.fromJson(e))
            .toList();
        return chats;
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }

  @override
  Future<List<ChatMessageEntity>?> getSingleChat(int chatId) async {
    final pref = getIt<AppPreferences>();
    try {
      final Dio dio = DioClient.createBarierDio(pref.getPushToken()!);

      final resp =
          await dio.get(Endpoints.getChatMessages, data: {'chat_id': chatId});
      log(resp.toString());
      List<ChatMessageEntity> chats = [];
      if (resp.data['statusCode'] == 200) {
        print('///////');
        print(resp.data['data']);
        chats = (resp.data['data'] as List<dynamic>)
            .map((e) => ChatMessageEntity.fromJson(e))
            .toList();
        return chats;
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }

  @override
  Future<ChatMessageEntity> sendMessage(
      CreateChatMessageRequest request) async {
    final pref = getIt<AppPreferences>();
    try {
      final Dio dio = DioClient.createBarierDio(pref.getPushToken()!);
      log(request.toString());
      final resp =
          await dio.post(Endpoints.createChatMessage, data: request.toJson());
      log(resp.toString());

      if (resp.data['statusCode'] == 200) {
        print('///////');
        print(resp.data['data']);

        return ChatMessageEntity.fromJson(resp.data['data']);
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }
}
