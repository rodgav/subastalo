import 'package:get/get.dart';

import 'monetizacion_logic.dart';

class MonetizacionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MonetizacionLogic());
  }
}
