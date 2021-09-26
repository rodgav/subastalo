import 'package:get/get.dart';

import 'new_pagina_logic.dart';

class NewPaginaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPaginaLogic());
  }
}
