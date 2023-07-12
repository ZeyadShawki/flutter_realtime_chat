// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/remote_data_source/remote_data_source.dart'
    as _i5;
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/repo/repostery.dart'
    as _i8;
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/base_repo.dart'
    as _i7;
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_usecase.dart'
    as _i9;
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/login_with_token_usecase.dart'
    as _i10;
import 'package:flutter_real_time_app_chat_with_larvel/auth/domain/use%20cases/register_usecase.dart'
    as _i11;
import 'package:flutter_real_time_app_chat_with_larvel/auth/reperesnation/bloc/bloc/auth_bloc.dart'
    as _i18;
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/remote_data_source/base_remote_data_source.dart'
    as _i6;
import 'package:flutter_real_time_app_chat_with_larvel/chats/data/repo/repo.dart'
    as _i13;
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/base_repo.dart'
    as _i12;
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/create_chat_usecase.dart'
    as _i14;
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/get_chat_list_usecase.dart'
    as _i15;
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/get_single_chat_usecase.dart'
    as _i16;
import 'package:flutter_real_time_app_chat_with_larvel/chats/domain/use_cases/sendmessage_usecase.dart'
    as _i17;
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/bloc/chat_bloc_bloc.dart'
    as _i19;
import 'package:flutter_real_time_app_chat_with_larvel/chats/presentation/chat_sesion_bloc/bloc/chat_session_bloc.dart'
    as _i20;
import 'package:flutter_real_time_app_chat_with_larvel/core/app-preferances/app_preferances.dart'
    as _i4;
import 'package:flutter_real_time_app_chat_with_larvel/core/di/register_module.dart'
    as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.AppPreferences>(() =>
        _i4.AppPreferences(sharedPreferences: gh<_i3.SharedPreferences>()));
    gh.singleton<_i5.BaseAuthRemoteDataSource>(_i5.AuthRemoteDataSource());
    gh.singleton<_i6.BaseRemoteDataSource>(_i6.ChatRemoteDataSource());
    gh.singleton<_i7.BaseAuthRepo>(
        _i8.AuthRepostery(baseAuthRepo: gh<_i5.BaseAuthRemoteDataSource>()));
    gh.singleton<_i9.LoginUseCase>(_i9.LoginUseCase(gh<_i7.BaseAuthRepo>()));
    gh.singleton<_i10.LoginWithTokenUseCase>(
        _i10.LoginWithTokenUseCase(gh<_i7.BaseAuthRepo>()));
    gh.singleton<_i11.RegisteruseCase>(
        _i11.RegisteruseCase(gh<_i7.BaseAuthRepo>()));
    gh.singleton<_i12.BaseChatRepostery>(
        _i13.ChatRepostery(gh<_i6.BaseRemoteDataSource>()));
    gh.singleton<_i14.CreateChatUseCase>(
        _i14.CreateChatUseCase(gh<_i12.BaseChatRepostery>()));
    gh.singleton<_i15.GetChatListUseCase>(
        _i15.GetChatListUseCase(gh<_i12.BaseChatRepostery>()));
    gh.singleton<_i16.GetSingleChatUsecase>(
        _i16.GetSingleChatUsecase(gh<_i12.BaseChatRepostery>()));
    gh.singleton<_i17.SendMessageUseCase>(
        _i17.SendMessageUseCase(gh<_i12.BaseChatRepostery>()));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i9.LoginUseCase>()));
    gh.factory<_i19.ChatBlocBloc>(() => _i19.ChatBlocBloc(
          gh<_i10.LoginWithTokenUseCase>(),
          gh<_i15.GetChatListUseCase>(),
        ));
    gh.factory<_i20.ChatSessionBloc>(() => _i20.ChatSessionBloc(
          gh<_i16.GetSingleChatUsecase>(),
          gh<_i17.SendMessageUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
