import 'package:get/get.dart';

import 'usuarios_detail_logic.dart';

class UsuariosDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.create<UsuariosDetailLogic>(
        () => UsuariosDetailLogic(Get.parameters['usuarioId'] ?? ''));
  }
}
