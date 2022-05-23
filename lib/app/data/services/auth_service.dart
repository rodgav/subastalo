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

  String get idUser => _encryptHelper.decrypt(_getStorage.read('id')) ?? '';
  String get name => _encryptHelper.decrypt(_getStorage.read('name')) ?? '';
  int get role => int.tryParse(_encryptHelper.decrypt(_getStorage.read('role')) ?? '')??0;

  Future<void> saveSession(TokenModel tokenModel) async {
    try {
      final payload = Jwt.parseJwt(tokenModel.jwt);
      await _getStorage.write('token', _encryptHelper.encrypt(tokenModel.jwt));
      await _getStorage.write('isLoggedIn', true);
      await _getStorage.write(
          'id', _encryptHelper.encrypt(payload['id'].toString()));
      await _getStorage.write(
          'name', _encryptHelper.encrypt(payload['name'].toString()));
      await _getStorage.write(
          'role', _encryptHelper.encrypt(payload['role'].toString()));
      await _getStorage.write(
          'iat',
          _encryptHelper.encrypt(DateTime.fromMillisecondsSinceEpoch(
                  payload['iat'] * 1000,
                  isUtc: true)
              .toString()));
      await _getStorage.write(
          'exp',
          _encryptHelper.encrypt(DateTime.fromMillisecondsSinceEpoch(
                  payload['exp'] * 1000,
                  isUtc: true)
              .toString()));
    } catch (e) {
      debugPrint('ocurrio un error $e');
    }
  }

  Future<void> saveLanguage() async {
    final locale = getLocale();
    if (locale.languageCode == 'en' && locale.countryCode == 'US') {
      await _getStorage.write('languageCode', 'es');
      await _getStorage.write('countryCode', 'PE');
    } else {
      await _getStorage.write('languageCode', 'en');
      await _getStorage.write('countryCode', 'US');
    }
  }

  Locale getLocale() {
    final languageCode = _getStorage.read('languageCode') ?? 'en';
    final countryCode = _getStorage.read('countryCode') ?? 'US';
    final locale = Locale(languageCode, countryCode);
    print('getLocale ${locale.languageCode} ${locale.countryCode}');
    return locale;
  }

  Future<String?> getToken() async {
    try {
      final token =
          _encryptHelper.decrypt(await _getStorage.read('token')) ?? '';
      if (token != '') {
        final expires =
            _encryptHelper.decrypt(await _getStorage.read('exp')) ?? '0';
        final exp = DateTime.parse(expires);
        print('exp $exp');
        final iat = DateTime.parse(
            _encryptHelper.decrypt(await (_getStorage.read('iat') ?? '0')) ??
                '0');
        print('iat $iat');
        if (iat.isBefore(exp)) {
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
      print('catch getotke $e');
      return null;
    }
  }



  Future<void> logout() async {
    await _getStorage.erase();
  }
}
