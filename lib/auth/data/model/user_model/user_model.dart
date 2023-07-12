
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';
//flutter packages pub run build_runner build --delete-conflicting-outputs.
@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String email,
    required int id,
    required String username
  }) = _UserModel;

   ChatUser toChatUser(){
    return ChatUser(
      id:   id.toString(),
      firstName: username,
    );
  }
	
  factory UserModel.fromJson(Map<String, dynamic> json) =>
			_$UserModelFromJson(json);
}


@freezed
class AuthUser with _$AuthUser {
  factory AuthUser({
    required UserModel user,
    required String token
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}



