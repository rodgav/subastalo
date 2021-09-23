import 'package:get/get.dart';

import 'campanas_logic.dart';

class CampanasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CampanasLogic());
  }
}
