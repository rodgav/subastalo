import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/page.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/modules/paginas/paginas_widget/del_pagina.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class PaginasLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  PaginasModel? _paginasModel;

  PaginasModel? get paginasModel => _paginasModel;

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delPagina() {
    Get.dialog(const AlertDialog(content: DelPagina()));
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
}
