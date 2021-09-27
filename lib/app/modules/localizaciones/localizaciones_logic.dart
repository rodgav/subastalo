import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/localizaciones/localizaciones/edit_departamento.dart';

class LocalizacionesLogic extends GetxController {
  void editDepart() {
    Get.dialog(const AlertDialog(content: EditDepartamento()));
  }
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void editCiudad() {
    Get.dialog(const AlertDialog(content: EditDepartamento()));
  }
}
