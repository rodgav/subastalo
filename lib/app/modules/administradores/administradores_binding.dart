import 'package:get/get.dart';

import 'administradores_logic.dart';

class AdministradoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdministradoresLogic());
  }
}
