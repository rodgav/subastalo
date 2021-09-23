import 'package:get/get.dart';

import 'localizaciones_logic.dart';

class LocalizacionesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalizacionesLogic());
  }
}
