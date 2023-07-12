
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loginmodel.freezed.dart';
part 'loginmodel.g.dart';

@freezed
class LoginModel with _$LoginModel {
  factory LoginModel({
    required String email,
    required String password,
  }) = _LoginModel;
	
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
			_$LoginModelFromJson(json);
}
