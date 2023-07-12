// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/login_model/loginmodel.dart';
import 'package:flutter_real_time_app_chat_with_larvel/auth/data/model/models.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/dio/dio_client.dart';
import 'package:flutter_real_time_app_chat_with_larvel/core/error/failure.dart';
import 'package:injectable/injectable.dart' as injectable;

import '../../../core/endpoints/endpoints.dart';
import '../model/register_model/registermodel.dart';

abstract class BaseAuthRemoteDataSource {
  Future<String> login(LoginModel loginModel);

  Future<String> register(RegisterModel registerModel);
  Future<UserModel> loginWithToken(String token);
  Future<Failure> logout();
}

@injectable.Order(-3)
@injectable.Singleton(as: BaseAuthRemoteDataSource)
class AuthRemoteDataSource extends BaseAuthRemoteDataSource {
  @override
  Future<String> login(LoginModel loginModel) async {
    try {
      final Dio dio = DioClient.createDioClient();
      final resp = await dio.post(Endpoints.login, data: loginModel.toJson());
  
      if (resp.data['message'] == 'Unauthenticated') {
        throw const Failure(404, 'error');
      }
      if (resp.data['statusCode'] == 200) {
        return resp.data['data']['token'];
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioError catch (e) {
      log(e.toString());
      throw Failure(404, e.toString());
    }
  }

  @override
  Future<UserModel> loginWithToken(String token) async {
    try {
      final Dio dio = DioClient.createBarierDio(token);

      final resp = await dio.post(Endpoints.loginWithToken);


      if (resp.data['statusCode'] == 200) {
       print('//////////');
       print(resp.data['data']);
        return UserModel.fromJson(resp.data['data']);
      }
      throw Failure(resp.data['statusCode']!, resp.data['statusMessage']!);
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }

  @override
  Future<Failure> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<String> register(RegisterModel registerModel) async {
    try {
      final Dio dio = DioClient.createDioClient();
      log(registerModel.toJson().toString());
      final resp =
          await dio.post(Endpoints.register, data: registerModel.toJson());
      log(resp.toString());
      if (resp.data['statusCode'] == 200) {
        return resp.data['data']['token'];
      } else {
        throw Failure(resp.data['statusCode'], resp.data['message']);
      }
    } on DioException catch (e) {
      log(e.toString());
      throw const Failure(404, 'error');
    }
  }
}
