import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/token.dart';

class RemoteDataProvider {
  final Dio _dio = Get.find<Dio>();

  Future<TokenModel?> login(String email, String password) async {
    final json = {'email': email, 'password': password};
    try {
      final response =
          await _dio.post('/login', data: {'json': jsonEncode(json)});
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<TokenModel?> create(
      String dni, String name, String email, String password) async {
    final json = {
      'dni': dni,
      'name': name,
      'email': email,
      'password': password
    };
    try {
      final response =
          await _dio.post('/user', data: {'json': jsonEncode(json)});
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<TokenModel?> refresh(String token) async {
    try {
      final response = await _dio.post('/refresh',
          options: Options(headers: {'token': token}));
      return TokenModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<CategorysModel?> categorys() async {
    try {
      final response = await _dio.get('/category');
      return CategorysModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
