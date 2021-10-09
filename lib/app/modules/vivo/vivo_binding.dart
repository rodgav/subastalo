import 'package:get/get.dart';

import 'vivo_logic.dart';

class VivoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VivoLogic());
  }
}
