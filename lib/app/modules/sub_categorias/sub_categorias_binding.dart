import 'package:get/get.dart';

import 'sub_categorias_logic.dart';

class SubCategoriasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubCategoriasLogic(Get.parameters['categoriaId'] ?? ''));
  }
}
