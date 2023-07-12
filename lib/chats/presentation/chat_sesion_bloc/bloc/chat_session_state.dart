part of 'chat_session_bloc.dart';

enum chatState {
  initial,
  loading,
  refreshMessges,

  getChatMsssagesLoading,
  getChatMsssagesSuccess,
  error,
}

@freezed
class ChatSessionState with _$ChatSessionState {
  const factory ChatSessionState({
            @Default(chatState.initial) chatState state,
           @Default([])  List<ChatMessageEntity>? messages,
  }) = _Initial;

}
