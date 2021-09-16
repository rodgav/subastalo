import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class RootLogic extends GetxController {
  void toHome(String? location) {
    if (location != '/' && location != '/home' && location != '/home/subastas') {
      Get.rootDelegate.offNamed(Routes.home);
    }
  }
}
