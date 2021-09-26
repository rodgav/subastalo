import 'package:get/get.dart';

import 't_aprobadas_logic.dart';

class TAprobadasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TAprobadasLogic());
  }
}
