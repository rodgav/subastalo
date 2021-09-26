import 'package:get/get.dart';

import 't_pendientes_logic.dart';

class TPendientesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TPendientesLogic());
  }
}
