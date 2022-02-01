import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/page.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NewPaginaLogic extends GetxController {
  final titleCtrl = TextEditingController();
  final pageCtrl = TextEditingController();

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  final _dataRepository = Get.find<RemoteDataRepository>();

  void savePage() async {
    if (titleCtrl.text.isNotEmpty && pageCtrl.text.isNotEmpty) {
      final title = titleCtrl.text.replaceAll(' ', '');
      final token = await AuthService.to.getToken();
      if (token != null) {
        final pagina = await _dataRepository.createPage(
            title, pageCtrl.text.trim(), token);
        if (pagina != null) {
          titleCtrl.clear();
          pageCtrl.clear();
        } else {
          DialogService.to
              .snackBar(ColorsUtils.red, 'ERROR', 'No se pudo crear la página');
        }
      }
    } else {
      DialogService.to
          .snackBar(ColorsUtils.red, 'ERROR', 'Rellene el formulario');
    }
  }
}
