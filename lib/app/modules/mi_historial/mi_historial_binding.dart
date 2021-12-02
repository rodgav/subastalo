import 'package:get/get.dart';

import 'mi_historial_logic.dart';

class MiHistorialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiHistorialLogic());
  }
}
