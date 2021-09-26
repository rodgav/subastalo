import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class MiSubastaLogic extends GetxController {

  void toMiSubastaDetail(String subastaId) {
    Get.rootDelegate.toNamed(Routes.misubastasDetail(subastaId));
  }

}
