import 'package:get/get.dart';

import 'mensajes_logic.dart';

class MensajesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MensajesLogic());
  }
}
