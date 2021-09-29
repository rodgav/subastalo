import 'package:get/get.dart';

import 'vender_logic.dart';

class VenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VenderLogic());
  }
}
