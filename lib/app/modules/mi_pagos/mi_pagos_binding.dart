import 'package:get/get.dart';

import 'mi_pagos_logic.dart';

class MiPagosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiPagosLogic());
  }
}
