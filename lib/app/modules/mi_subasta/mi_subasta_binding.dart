import 'package:get/get.dart';

import 'mi_subasta_logic.dart';

class MiSubastaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiSubastaLogic());
  }
}
