import 'package:get/get.dart';

import 't_bloqueadas_logic.dart';

class TBloqueadasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TBloqueadasLogic());
  }
}
