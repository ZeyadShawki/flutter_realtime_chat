
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registermodel.freezed.dart';
part 'registermodel.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  factory RegisterModel({
       @JsonKey(name: "username") required String username,

   @JsonKey(name: "email")   required String email,
    @JsonKey(name: "password")  required String password,
   @JsonKey(name: "password_confirmation")  required String confPassword
  }) = _RegisterModel;
	
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
			_$RegisterModelFromJson(json);
}
