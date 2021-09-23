import 'package:get/get.dart';

import 'tablero_logic.dart';

class TableroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TableroLogic());
  }
}
