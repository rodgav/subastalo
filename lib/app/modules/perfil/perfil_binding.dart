import 'package:get/get.dart';

import 'perfil_logic.dart';

class PerfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PerfilLogic());
  }
}
