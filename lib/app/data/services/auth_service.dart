import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:subastalo/app/data/models/token.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/utils/encrypt_helper.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();
  final _encryptHelper = Get.find<EncryptHelper>();
  final _dataRepository = Get.find<RemoteDataRepository>();
  final _getStorage = GetStorage();

  bool get isLoggedIn => _getStorage.read('isLoggedIn') ?? false;

  Future<void> saveSession(TokenModel tokenModel) async {
    try {
      final _payload = Jwt.parseJwt(tokenModel.jwt);
      await _getStorage.write('token', _encryptHelper.encrypt(tokenModel.jwt));
      await _getStorage.write('isLoggedIn', true);
      await _getStorage.write(
          'id', _encryptHelper.encrypt(_payload['id'].toString()));
      await _getStorage.write(
          'name', _encryptHelper.encrypt(_payload['name'].toString()));
      await _getStorage.write(
          'role', _encryptHelper.encrypt(_payload['name'].toString()));
      await _getStorage.write(
          'iat', _encryptHelper.encrypt(_payload['iat'].toString()));
      await _getStorage.write(
          'exp', _encryptHelper.encrypt(_payload['exp'].toString()));
    } catch (e) {
      debugPrint('ocurrio un error $e');
    }
  }

  Future<String?> getToken() async {
    try {
      final token = await _getStorage.read('token') ?? '';
      if (token != '') {
        final expires =
            _encryptHelper.decrypt(await _getStorage.read('exp')) ?? '0';
        final exp = int.parse(expires);
        print('exp $exp');
        final currenDate = DateTime.now();
        final iat = DateTime.parse(
            _encryptHelper.decrypt(await (_getStorage.read('iat') ?? '0')) ??
                '0');
        print('iat $iat');
        final diff = currenDate.difference(iat).inSeconds;
        if (exp - diff >= 60) {
          return token;
        }
        final tokenModel = await _dataRepository.refresh(token);
        if (tokenModel != null) {
          await saveSession(tokenModel);
          return tokenModel.jwt;
        } else {
          await _getStorage.erase();
          return null;
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> logout() async {
    await _getStorage.erase();
  }
}
