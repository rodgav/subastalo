import 'package:get/get.dart';

import 'subastas_detail_logic.dart';

class SubastasDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.create<SubastasDetailLogic>(
        () => SubastasDetailLogic(Get.parameters['subastaId'] ?? ''));
  }
}
