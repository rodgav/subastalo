import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class MensajesLogic extends GetxController {
  void toMensajeDetail(String mensajeId) {
    Get.rootDelegate.toNamed(Routes.mensajesDetail(mensajeId));
  }
}
