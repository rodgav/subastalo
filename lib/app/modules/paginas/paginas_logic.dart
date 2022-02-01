import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/page.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/paginas/paginas_widget/del_pagina.dart';
import 'package:subastalo/app/modules/paginas/paginas_widget/edit_pagina.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class PaginasLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  final titleCtrl = TextEditingController();
  final htmlCtrl = TextEditingController();
  PaginasModel? _paginasModel;

  PaginasModel? get paginasModel => _paginasModel;

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delPagina(int idPage) {
    Get.dialog(AlertDialog(content: DelPagina(idPage)));
  }

  void toNewPage() {
    Get.rootDelegate.toNamed(Routes.newPagina);
  }

  @override
  void onReady() {
    _pages();
    super.onReady();
  }

  void _pages() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _paginasModel = await _dataRepository.pages(token);
      update(['paginas']);
    }
  }

  void editPagina(Pagina pagina) {
    titleCtrl.text = pagina.title;
    htmlCtrl.text = pagina.html;
    Get.dialog(AlertDialog(content: EditPagina(pagina.id)));
  }

  void saveEditPagina(int idPagina) async {
    if (titleCtrl.text.isNotEmpty && htmlCtrl.text.isNotEmpty) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final response = await _dataRepository.updatePage(
            token, idPagina, titleCtrl.text.trim(), htmlCtrl.text.trim());
        if (response) {
          titleCtrl.clear();
          htmlCtrl.clear();
          _pages();toBack();
        } else {
          DialogService.to.snackBar(
              ColorsUtils.red, 'ERROR', 'No se pudo actualizar la página');
        }
      }
    } else {
      DialogService.to
          .snackBar(ColorsUtils.red, 'ERROR', 'Complete el formulario');
    }
  }

  void saveDelPagina(int idPage) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final response = await _dataRepository.deletePage(token, idPage);
      if (response) {
        _pages();
        toBack();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo eliminar la página');
      }
    }
  }
}
