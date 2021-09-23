import 'package:get/get.dart';

import 'paginas_logic.dart';

class PaginasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaginasLogic());
  }
}
