import 'package:get/get.dart';

import 'mi_favoritas_logic.dart';

class MiFavoritasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiFavoritasLogic());
  }
}
