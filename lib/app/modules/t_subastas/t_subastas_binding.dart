import 'package:get/get.dart';

import 't_subastas_logic.dart';

class TSubastasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TSubastasLogic());
  }
}
