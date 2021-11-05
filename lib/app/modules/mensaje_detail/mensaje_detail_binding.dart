import 'package:get/get.dart';

import 'mensaje_detail_logic.dart';

class MensajeDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MensajeDetailLogic>(
        () => MensajeDetailLogic(Get.parameters['mensajeId'] ?? ''));
  }
}
