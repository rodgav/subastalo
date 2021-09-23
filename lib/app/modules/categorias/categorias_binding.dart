import 'package:get/get.dart';

import 'categorias_logic.dart';

class CategoriasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriasLogic());
  }
}
