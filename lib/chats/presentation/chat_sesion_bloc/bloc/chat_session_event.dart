part of 'chat_session_bloc.dart';

@freezed
class ChatSessionEvent with _$ChatSessionEvent {
    const factory ChatSessionEvent.getChatMssages(int chatId) = getChatMssages;
  const factory ChatSessionEvent.refreshMessagesEvenet(Map<String,dynamic> data) = refreshMessagesEvent;
  const factory ChatSessionEvent.sendMessage(CreateChatMessageRequest chatmessage) = sendMessage;


}