import 'package:get/get.dart';

import 'info_subastas_logic.dart';

class InfoSubastasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoSubastasLogic());
  }
}
