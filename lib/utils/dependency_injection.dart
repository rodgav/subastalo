import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/providers/local_providers/local_data_provider.dart';
import 'package:subastalo/app/data/providers/local_providers/remote_data_provider.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/utils/encrypt_helper.dart';

class DependencyInjection {
  static void init() {
    Get.put<EncryptHelper>(EncryptHelper());
    Get.put(Dio(BaseOptions(
        //baseUrl: 'https://apisubastalo.rsgmsolutions.com/api',
        baseUrl: 'http://192.168.0.107/api-subastalo/public/api',
        contentType: Headers.formUrlEncodedContentType,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 600;
        },
        connectTimeout: 5000,
        receiveTimeout: 5000)));
    Get.put<RemoteDataProvider>(RemoteDataProvider());
    Get.put<RemoteDataRepository>(RemoteDataRepository());
    Get.put<LocalDataProvider>(LocalDataProvider());
    Get.put<LocalDataRepository>(LocalDataRepository());
    Get.put<AuthService>(AuthService());
    Get.put<DialogService>(DialogService());
  }
}
