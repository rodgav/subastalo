import 'package:get/get.dart';

import 'mi_subasta_detail_logic.dart';

class MiSubastaDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.create<MiSubastaDetailLogic>(
        () => MiSubastaDetailLogic(Get.parameters['subastaId'] ?? ''));
  }
}
