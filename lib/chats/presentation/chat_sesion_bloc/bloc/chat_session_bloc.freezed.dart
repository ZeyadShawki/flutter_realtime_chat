// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatSessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) getChatMssages,
    required TResult Function(Map<String, dynamic> data) refreshMessagesEvenet,
    required TResult Function(CreateChatMessageRequest chatmessage) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? getChatMssages,
    TResult? Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult? Function(CreateChatMessageRequest chatmessage)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? getChatMssages,
    TResult Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult Function(CreateChatMessageRequest chatmessage)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getChatMssages value) getChatMssages,
    required TResult Function(refreshMessagesEvent value) refreshMessagesEvenet,
    required TResult Function(sendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getChatMssages value)? getChatMssages,
    TResult? Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult? Function(sendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getChatMssages value)? getChatMssages,
    TResult Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult Function(sendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionEventCopyWith<$Res> {
  factory $ChatSessionEventCopyWith(
          ChatSessionEvent value, $Res Function(ChatSessionEvent) then) =
      _$ChatSessionEventCopyWithImpl<$Res, ChatSessionEvent>;
}

/// @nodoc
class _$ChatSessionEventCopyWithImpl<$Res, $Val extends ChatSessionEvent>
    implements $ChatSessionEventCopyWith<$Res> {
  _$ChatSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getChatMssagesCopyWith<$Res> {
  factory _$$getChatMssagesCopyWith(
          _$getChatMssages value, $Res Function(_$getChatMssages) then) =
      __$$getChatMssagesCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$getChatMssagesCopyWithImpl<$Res>
    extends _$ChatSessionEventCopyWithImpl<$Res, _$getChatMssages>
    implements _$$getChatMssagesCopyWith<$Res> {
  __$$getChatMssagesCopyWithImpl(
      _$getChatMssages _value, $Res Function(_$getChatMssages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$getChatMssages(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getChatMssages implements getChatMssages {
  const _$getChatMssages(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatSessionEvent.getChatMssages(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getChatMssages &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getChatMssagesCopyWith<_$getChatMssages> get copyWith =>
      __$$getChatMssagesCopyWithImpl<_$getChatMssages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) getChatMssages,
    required TResult Function(Map<String, dynamic> data) refreshMessagesEvenet,
    required TResult Function(CreateChatMessageRequest chatmessage) sendMessage,
  }) {
    return getChatMssages(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? getChatMssages,
    TResult? Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult? Function(CreateChatMessageRequest chatmessage)? sendMessage,
  }) {
    return getChatMssages?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? getChatMssages,
    TResult Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult Function(CreateChatMessageRequest chatmessage)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChatMssages != null) {
      return getChatMssages(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getChatMssages value) getChatMssages,
    required TResult Function(refreshMessagesEvent value) refreshMessagesEvenet,
    required TResult Function(sendMessage value) sendMessage,
  }) {
    return getChatMssages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getChatMssages value)? getChatMssages,
    TResult? Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult? Function(sendMessage value)? sendMessage,
  }) {
    return getChatMssages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getChatMssages value)? getChatMssages,
    TResult Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult Function(sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChatMssages != null) {
      return getChatMssages(this);
    }
    return orElse();
  }
}

abstract class getChatMssages implements ChatSessionEvent {
  const factory getChatMssages(final int chatId) = _$getChatMssages;

  int get chatId;
  @JsonKey(ignore: true)
  _$$getChatMssagesCopyWith<_$getChatMssages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$refreshMessagesEventCopyWith<$Res> {
  factory _$$refreshMessagesEventCopyWith(_$refreshMessagesEvent value,
          $Res Function(_$refreshMessagesEvent) then) =
      __$$refreshMessagesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$refreshMessagesEventCopyWithImpl<$Res>
    extends _$ChatSessionEventCopyWithImpl<$Res, _$refreshMessagesEvent>
    implements _$$refreshMessagesEventCopyWith<$Res> {
  __$$refreshMessagesEventCopyWithImpl(_$refreshMessagesEvent _value,
      $Res Function(_$refreshMessagesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$refreshMessagesEvent(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$refreshMessagesEvent implements refreshMessagesEvent {
  const _$refreshMessagesEvent(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ChatSessionEvent.refreshMessagesEvenet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$refreshMessagesEvent &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$refreshMessagesEventCopyWith<_$refreshMessagesEvent> get copyWith =>
      __$$refreshMessagesEventCopyWithImpl<_$refreshMessagesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) getChatMssages,
    required TResult Function(Map<String, dynamic> data) refreshMessagesEvenet,
    required TResult Function(CreateChatMessageRequest chatmessage) sendMessage,
  }) {
    return refreshMessagesEvenet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? getChatMssages,
    TResult? Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult? Function(CreateChatMessageRequest chatmessage)? sendMessage,
  }) {
    return refreshMessagesEvenet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? getChatMssages,
    TResult Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult Function(CreateChatMessageRequest chatmessage)? sendMessage,
    required TResult orElse(),
  }) {
    if (refreshMessagesEvenet != null) {
      return refreshMessagesEvenet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getChatMssages value) getChatMssages,
    required TResult Function(refreshMessagesEvent value) refreshMessagesEvenet,
    required TResult Function(sendMessage value) sendMessage,
  }) {
    return refreshMessagesEvenet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getChatMssages value)? getChatMssages,
    TResult? Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult? Function(sendMessage value)? sendMessage,
  }) {
    return refreshMessagesEvenet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getChatMssages value)? getChatMssages,
    TResult Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult Function(sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (refreshMessagesEvenet != null) {
      return refreshMessagesEvenet(this);
    }
    return orElse();
  }
}

abstract class refreshMessagesEvent implements ChatSessionEvent {
  const factory refreshMessagesEvent(final Map<String, dynamic> data) =
      _$refreshMessagesEvent;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$refreshMessagesEventCopyWith<_$refreshMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$sendMessageCopyWith<$Res> {
  factory _$$sendMessageCopyWith(
          _$sendMessage value, $Res Function(_$sendMessage) then) =
      __$$sendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateChatMessageRequest chatmessage});

  $CreateChatMessageRequestCopyWith<$Res> get chatmessage;
}

/// @nodoc
class __$$sendMessageCopyWithImpl<$Res>
    extends _$ChatSessionEventCopyWithImpl<$Res, _$sendMessage>
    implements _$$sendMessageCopyWith<$Res> {
  __$$sendMessageCopyWithImpl(
      _$sendMessage _value, $Res Function(_$sendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatmessage = null,
  }) {
    return _then(_$sendMessage(
      null == chatmessage
          ? _value.chatmessage
          : chatmessage // ignore: cast_nullable_to_non_nullable
              as CreateChatMessageRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateChatMessageRequestCopyWith<$Res> get chatmessage {
    return $CreateChatMessageRequestCopyWith<$Res>(_value.chatmessage, (value) {
      return _then(_value.copyWith(chatmessage: value));
    });
  }
}

/// @nodoc

class _$sendMessage implements sendMessage {
  const _$sendMessage(this.chatmessage);

  @override
  final CreateChatMessageRequest chatmessage;

  @override
  String toString() {
    return 'ChatSessionEvent.sendMessage(chatmessage: $chatmessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendMessage &&
            (identical(other.chatmessage, chatmessage) ||
                other.chatmessage == chatmessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatmessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sendMessageCopyWith<_$sendMessage> get copyWith =>
      __$$sendMessageCopyWithImpl<_$sendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) getChatMssages,
    required TResult Function(Map<String, dynamic> data) refreshMessagesEvenet,
    required TResult Function(CreateChatMessageRequest chatmessage) sendMessage,
  }) {
    return sendMessage(chatmessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? getChatMssages,
    TResult? Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult? Function(CreateChatMessageRequest chatmessage)? sendMessage,
  }) {
    return sendMessage?.call(chatmessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? getChatMssages,
    TResult Function(Map<String, dynamic> data)? refreshMessagesEvenet,
    TResult Function(CreateChatMessageRequest chatmessage)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(chatmessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getChatMssages value) getChatMssages,
    required TResult Function(refreshMessagesEvent value) refreshMessagesEvenet,
    required TResult Function(sendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getChatMssages value)? getChatMssages,
    TResult? Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult? Function(sendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getChatMssages value)? getChatMssages,
    TResult Function(refreshMessagesEvent value)? refreshMessagesEvenet,
    TResult Function(sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class sendMessage implements ChatSessionEvent {
  const factory sendMessage(final CreateChatMessageRequest chatmessage) =
      _$sendMessage;

  CreateChatMessageRequest get chatmessage;
  @JsonKey(ignore: true)
  _$$sendMessageCopyWith<_$sendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatSessionState {
  chatState get state => throw _privateConstructorUsedError;
  List<ChatMessageEntity>? get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatSessionStateCopyWith<ChatSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionStateCopyWith<$Res> {
  factory $ChatSessionStateCopyWith(
          ChatSessionState value, $Res Function(ChatSessionState) then) =
      _$ChatSessionStateCopyWithImpl<$Res, ChatSessionState>;
  @useResult
  $Res call({chatState state, List<ChatMessageEntity>? messages});
}

/// @nodoc
class _$ChatSessionStateCopyWithImpl<$Res, $Val extends ChatSessionState>
    implements $ChatSessionStateCopyWith<$Res> {
  _$ChatSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as chatState,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ChatSessionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({chatState state, List<ChatMessageEntity>? messages});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatSessionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? messages = freezed,
  }) {
    return _then(_$_Initial(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as chatState,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.state = chatState.initial,
      final List<ChatMessageEntity>? messages = const []})
      : _messages = messages;

  @override
  @JsonKey()
  final chatState state;
  final List<ChatMessageEntity>? _messages;
  @override
  @JsonKey()
  List<ChatMessageEntity>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatSessionState(state: $state, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatSessionState {
  const factory _Initial(
      {final chatState state,
      final List<ChatMessageEntity>? messages}) = _$_Initial;

  @override
  chatState get state;
  @override
  List<ChatMessageEntity>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
