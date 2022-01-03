import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/categorias/categorias_widget/edit_categoria.dart';

class CategoriasLogic extends GetxController {
  final nameCtrl = TextEditingController();
  final descrCtrl = TextEditingController();
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void editCateg() {
    Get.dialog(const AlertDialog(content: EditCategoria()));
  }

}
