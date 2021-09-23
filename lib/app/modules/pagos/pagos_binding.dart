import 'package:get/get.dart';

import 'pagos_logic.dart';

class PagosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PagosLogic());
  }
}
