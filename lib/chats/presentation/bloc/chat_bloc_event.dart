part of 'chat_bloc_bloc.dart';

@freezed
class ChatBlocEvent with _$ChatBlocEvent {
    const factory ChatBlocEvent.getUserData() = GetUserData;
       const factory ChatBlocEvent.getChatsList() = GetChatList;

}