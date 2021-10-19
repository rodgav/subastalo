import 'package:get/get.dart';

import 'nueva_subasta_logic.dart';

class NuevaSubastaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NuevaSubastaLogic());
  }
}
