import 'package:get/get.dart';

import 'subastas_logic.dart';

class SubastasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubastasLogic());
  }
}
