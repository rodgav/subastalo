import 'package:get/get.dart';

class MiSubastaDetailLogic extends GetxController {
  final String subastaId;

  MiSubastaDetailLogic(this.subastaId);

  void toBack() {
    Get.rootDelegate.popRoute();
  }
}
