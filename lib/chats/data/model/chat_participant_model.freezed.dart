// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatParticipantEntity _$ChatParticipantEntityFromJson(
    Map<String, dynamic> json) {
  return _ChatParticipantEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatParticipantEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "chat_id")
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatParticipantEntityCopyWith<ChatParticipantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantEntityCopyWith<$Res> {
  factory $ChatParticipantEntityCopyWith(ChatParticipantEntity value,
          $Res Function(ChatParticipantEntity) then) =
      _$ChatParticipantEntityCopyWithImpl<$Res, ChatParticipantEntity>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "chat_id") int chatId,
      @JsonKey(name: "user_id") int userId});
}

/// @nodoc
class _$ChatParticipantEntityCopyWithImpl<$Res,
        $Val extends ChatParticipantEntity>
    implements $ChatParticipantEntityCopyWith<$Res> {
  _$ChatParticipantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatParticipantEntityCopyWith<$Res>
    implements $ChatParticipantEntityCopyWith<$Res> {
  factory _$$_ChatParticipantEntityCopyWith(_$_ChatParticipantEntity value,
          $Res Function(_$_ChatParticipantEntity) then) =
      __$$_ChatParticipantEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "chat_id") int chatId,
      @JsonKey(name: "user_id") int userId});
}

/// @nodoc
class __$$_ChatParticipantEntityCopyWithImpl<$Res>
    extends _$ChatParticipantEntityCopyWithImpl<$Res, _$_ChatParticipantEntity>
    implements _$$_ChatParticipantEntityCopyWith<$Res> {
  __$$_ChatParticipantEntityCopyWithImpl(_$_ChatParticipantEntity _value,
      $Res Function(_$_ChatParticipantEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
  }) {
    return _then(_$_ChatParticipantEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatParticipantEntity implements _ChatParticipantEntity {
  _$_ChatParticipantEntity(
      {required this.id,
      @JsonKey(name: "chat_id") required this.chatId,
      @JsonKey(name: "user_id") required this.userId});

  factory _$_ChatParticipantEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ChatParticipantEntityFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "chat_id")
  final int chatId;
  @override
  @JsonKey(name: "user_id")
  final int userId;

  @override
  String toString() {
    return 'ChatParticipantEntity(id: $id, chatId: $chatId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatParticipantEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chatId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatParticipantEntityCopyWith<_$_ChatParticipantEntity> get copyWith =>
      __$$_ChatParticipantEntityCopyWithImpl<_$_ChatParticipantEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatParticipantEntityToJson(
      this,
    );
  }
}

abstract class _ChatParticipantEntity implements ChatParticipantEntity {
  factory _ChatParticipantEntity(
          {required final int id,
          @JsonKey(name: "chat_id") required final int chatId,
          @JsonKey(name: "user_id") required final int userId}) =
      _$_ChatParticipantEntity;

  factory _ChatParticipantEntity.fromJson(Map<String, dynamic> json) =
      _$_ChatParticipantEntity.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "chat_id")
  int get chatId;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatParticipantEntityCopyWith<_$_ChatParticipantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
