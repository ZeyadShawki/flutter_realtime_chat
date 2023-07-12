// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confPassword,
    };
