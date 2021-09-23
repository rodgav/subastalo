import 'package:get/get.dart';

import 'comentarios_logic.dart';

class ComentariosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComentariosLogic());
  }
}
