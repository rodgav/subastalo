import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/paginas/paginas_widget/del_pagina.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class PaginasLogic extends GetxController {
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delPagina() {
    Get.dialog(const AlertDialog(content: DelPagina()));
  }

  void toNewPage() {
    Get.rootDelegate.toNamed(Routes.newPagina);
  }
}
