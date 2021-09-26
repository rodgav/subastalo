import 'package:get/get.dart';

import 'mi_pendientes_logic.dart';

class MiPendientesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiPendientesLogic());
  }
}
