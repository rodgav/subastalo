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

  Pagina? _pagina;

  Pagina? get pagina => _pagina;

  @override
  void onReady() {
    super.onReady();
  }

  void savePage() async {
    if (titleCtrl.text.isNotEmpty && pageCtrl.text.isNotEmpty) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        _pagina = await _dataRepository.createPage(
            titleCtrl.text.trim(), pageCtrl.text.trim(), token);
        titleCtrl.clear();
        pageCtrl.clear();
      }
    } else {
      DialogService.to
          .snackBar(ColorsUtils.red, 'ERROR', 'No se pudo crear la pagina');
    }
  }
}
