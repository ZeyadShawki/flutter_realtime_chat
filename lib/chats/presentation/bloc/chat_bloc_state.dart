part of 'chat_bloc_bloc.dart';



enum StateStatus {
  initial,
  loading,
  successGetUserData,
  
  getChatListLoading,
  getChatListSuccess,
  error,
}
@freezed
class ChatBlocState with _$ChatBlocState {
  const factory ChatBlocState({
        @Default(StateStatus.initial) StateStatus status,
      UserModel? userData,
              @Default(StateStatus.initial) StateStatus chatState,

     @Default([])   List<ChatEntity> chats,
  })= Initial;
}
