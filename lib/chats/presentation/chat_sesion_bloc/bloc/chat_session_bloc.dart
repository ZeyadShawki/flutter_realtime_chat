import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_message_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/requests/create_chat_message_request.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/create_chat_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/get_single_chat_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/sendmessage_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/bloc/chat_bloc_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

import '../../../data/model/requests/create_chat_request.dart';
part 'chat_session_event.dart';
part 'chat_session_state.dart';
part 'chat_session_bloc.freezed.dart';

@injectable
class ChatSessionBloc extends Bloc<ChatSessionEvent, ChatSessionState> {
  ChatSessionBloc(this.getSingleChatUsecase, this.sendMessageUseCase)
      : super((_Initial())) {
    on<ChatSessionEvent>((event, emit) async {
      //  await event.map(
      //   getChatMssages:
      //  );
      await event.map(
          sendMessage: (event) async => await _sendMessage(event, emit),
          getChatMssages: (event) async => await _getChatMessages(event, emit),
          refreshMessagesEvenet: (event) async =>
              await _refreshMessages(event, emit));
    });
  }
  final GetSingleChatUsecase getSingleChatUsecase;

  _getChatMessages(getChatMssages event, Emitter<ChatSessionState> emit) async {
    emit(state.copyWith(state: chatState.loading));
    final data = await getSingleChatUsecase.call(event.chatId);
    data.fold((left) {
      emit(state.copyWith(state: chatState.error));
    }, (right) {
      emit(state.copyWith(
          messages: right, state: chatState.getChatMsssagesSuccess));
    });
  }

  emituistate() {
    emit(state.copyWith(state: chatState.loading));
    emit(state.copyWith(state: chatState.getChatMsssagesSuccess));
  }

  _refreshMessages(refreshMessagesEvent event, Emitter<ChatSessionState> emit) {
    emit(state.copyWith(state: chatState.refreshMessges, messages: [
      ChatMessageEntity.fromJson(event.data),
      ...state.messages!,
    ]));
    emituistate();
  }

  final SendMessageUseCase sendMessageUseCase;
  _sendMessage(sendMessage event, Emitter<ChatSessionState> emit) async {
    final data = await sendMessageUseCase.call(event.chatmessage);
    data.fold((left) => null, (right) {
      log('wwwwww');
      log(right.toString());

      // emit(state.copyWith(state: chatState.refreshMessges, messages: [
      //  right,
      //   ...state.messages!,
      // ]));
    });
  }
}
