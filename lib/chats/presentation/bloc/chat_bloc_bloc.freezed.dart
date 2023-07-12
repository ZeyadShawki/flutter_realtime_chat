// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() getChatsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? getChatsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? getChatsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetChatList value) getChatsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetChatList value)? getChatsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetChatList value)? getChatsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocEventCopyWith<$Res> {
  factory $ChatBlocEventCopyWith(
          ChatBlocEvent value, $Res Function(ChatBlocEvent) then) =
      _$ChatBlocEventCopyWithImpl<$Res, ChatBlocEvent>;
}

/// @nodoc
class _$ChatBlocEventCopyWithImpl<$Res, $Val extends ChatBlocEvent>
    implements $ChatBlocEventCopyWith<$Res> {
  _$ChatBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserDataCopyWith<$Res> {
  factory _$$GetUserDataCopyWith(
          _$GetUserData value, $Res Function(_$GetUserData) then) =
      __$$GetUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$GetUserData>
    implements _$$GetUserDataCopyWith<$Res> {
  __$$GetUserDataCopyWithImpl(
      _$GetUserData _value, $Res Function(_$GetUserData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserData implements GetUserData {
  const _$GetUserData();

  @override
  String toString() {
    return 'ChatBlocEvent.getUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() getChatsList,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? getChatsList,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? getChatsList,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetChatList value) getChatsList,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetChatList value)? getChatsList,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetChatList value)? getChatsList,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserData implements ChatBlocEvent {
  const factory GetUserData() = _$GetUserData;
}

/// @nodoc
abstract class _$$GetChatListCopyWith<$Res> {
  factory _$$GetChatListCopyWith(
          _$GetChatList value, $Res Function(_$GetChatList) then) =
      __$$GetChatListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatListCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$GetChatList>
    implements _$$GetChatListCopyWith<$Res> {
  __$$GetChatListCopyWithImpl(
      _$GetChatList _value, $Res Function(_$GetChatList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetChatList implements GetChatList {
  const _$GetChatList();

  @override
  String toString() {
    return 'ChatBlocEvent.getChatsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() getChatsList,
  }) {
    return getChatsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? getChatsList,
  }) {
    return getChatsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? getChatsList,
    required TResult orElse(),
  }) {
    if (getChatsList != null) {
      return getChatsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserData value) getUserData,
    required TResult Function(GetChatList value) getChatsList,
  }) {
    return getChatsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserData value)? getUserData,
    TResult? Function(GetChatList value)? getChatsList,
  }) {
    return getChatsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserData value)? getUserData,
    TResult Function(GetChatList value)? getChatsList,
    required TResult orElse(),
  }) {
    if (getChatsList != null) {
      return getChatsList(this);
    }
    return orElse();
  }
}

abstract class GetChatList implements ChatBlocEvent {
  const factory GetChatList() = _$GetChatList;
}

/// @nodoc
mixin _$ChatBlocState {
  StateStatus get status => throw _privateConstructorUsedError;
  UserModel? get userData => throw _privateConstructorUsedError;
  StateStatus get chatState => throw _privateConstructorUsedError;
  List<ChatEntity> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBlocStateCopyWith<ChatBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocStateCopyWith<$Res> {
  factory $ChatBlocStateCopyWith(
          ChatBlocState value, $Res Function(ChatBlocState) then) =
      _$ChatBlocStateCopyWithImpl<$Res, ChatBlocState>;
  @useResult
  $Res call(
      {StateStatus status,
      UserModel? userData,
      StateStatus chatState,
      List<ChatEntity> chats});

  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class _$ChatBlocStateCopyWithImpl<$Res, $Val extends ChatBlocState>
    implements $ChatBlocStateCopyWith<$Res> {
  _$ChatBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userData = freezed,
    Object? chatState = null,
    Object? chats = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      chatState: null == chatState
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ChatBlocStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      UserModel? userData,
      StateStatus chatState,
      List<ChatEntity> chats});

  @override
  $UserModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ChatBlocStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userData = freezed,
    Object? chatState = null,
    Object? chats = null,
  }) {
    return _then(_$Initial(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      chatState: null == chatState
          ? _value.chatState
          : chatState // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {this.status = StateStatus.initial,
      this.userData,
      this.chatState = StateStatus.initial,
      final List<ChatEntity> chats = const []})
      : _chats = chats;

  @override
  @JsonKey()
  final StateStatus status;
  @override
  final UserModel? userData;
  @override
  @JsonKey()
  final StateStatus chatState;
  final List<ChatEntity> _chats;
  @override
  @JsonKey()
  List<ChatEntity> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatBlocState(status: $status, userData: $userData, chatState: $chatState, chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.chatState, chatState) ||
                other.chatState == chatState) &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, userData, chatState,
      const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);
}

abstract class Initial implements ChatBlocState {
  const factory Initial(
      {final StateStatus status,
      final UserModel? userData,
      final StateStatus chatState,
      final List<ChatEntity> chats}) = _$Initial;

  @override
  StateStatus get status;
  @override
  UserModel? get userData;
  @override
  StateStatus get chatState;
  @override
  List<ChatEntity> get chats;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
