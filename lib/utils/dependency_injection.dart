import 'package:get/get.dart';
import 'package:subastalo/app/data/providers/local_providers/local_data_provider.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/utils/encrypt_helper.dart';

class DependencyInjection {
  static void init() {
    Get.put<EncryptHelper>(EncryptHelper());
    Get.put<LocalDataProvider>(LocalDataProvider());
    Get.put<LocalDataRepository>(LocalDataRepository());
  }
}
