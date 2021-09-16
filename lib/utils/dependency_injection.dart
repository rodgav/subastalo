import 'package:get/get.dart';
import 'package:subastalo/app/data/providers/local_providers/local_data_provider.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';

class DependencyInjection {
  static void init() {
    Get.put<LocalDataProvider>(LocalDataProvider());
    Get.put<LocalDataRepository>(LocalDataRepository());
  }
}
