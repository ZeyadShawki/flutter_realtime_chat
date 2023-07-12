// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessageEntity _$$_ChatMessageEntityFromJson(Map<String, dynamic> json) =>
    _$_ChatMessageEntity(
      id: json['id'] as int,
      chatId: json['chat_id'] is String? int.parse(json['chat_id']): json['chat_id'] ,
      userId: json['user_id'] as int,
      message: json['message'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChatMessageEntityToJson(
        _$_ChatMessageEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'user_id': instance.userId,
      'message': instance.message,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
    };
