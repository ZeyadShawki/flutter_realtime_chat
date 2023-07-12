import 'package:bloc/bloc.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/models.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_with_token_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/model/chat_model.dart';
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/get_chat_list_usecase.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/di/dependency_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc_bloc.freezed.dart';

@injectable
class ChatBlocBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  ChatBlocBloc(this.loginWithTokenUseCase, this.chatListUseCase) : super(Initial()) {
    on<ChatBlocEvent>((event, emit) async {
      await event.map(

        getUserData: (event) async => await _getUserData(event, emit),
        getChatsList: (event) async => await _getChatsList(event, emit),
      );
    });
  }
  final LoginWithTokenUseCase loginWithTokenUseCase;
    final GetChatListUseCase chatListUseCase;

  _getUserData(event, Emitter<ChatBlocState> emit) async {
    emit(state.copyWith(status: StateStatus.loading));

    final AppPreferences appPreferences = getIt<AppPreferences>();
    final resp =
        await loginWithTokenUseCase.call(appPreferences.getPushToken()!);
    resp.fold((left) {
      emit(state.copyWith(
        status: StateStatus.error,
      ));
    }, (right) {
      emit(state.copyWith(
        userData: right,
        status: StateStatus.successGetUserData,
      ));
    });
  }
  
  _getChatsList(GetChatList event, Emitter<ChatBlocState> emit) async{

    final resp =
        await chatListUseCase.call();
    resp.fold((left) {
      emit(state.copyWith(
        chatState: StateStatus.error,
      ));
    }, (right) {
      emit(state.copyWith(
        chats: right,
        chatState: StateStatus.getChatListSuccess,
      ));
    });
  }
}
