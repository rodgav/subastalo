import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';

class SubastasDetailLogic extends GetxController {
  Subasta? _subasta;

  Subasta? get subasta => _subasta;

  @override
  void onInit() {
    final param = Get.parameters['subastaId'] ?? '';
    super.onInit();
  }

}
