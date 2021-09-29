import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_widget/aceptado.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_widget/aceptar.dart';

class MiSubastaDetailLogic extends GetxController {
  final String subastaId;

  MiSubastaDetailLogic(this.subastaId);

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void aceptar(String subasta) {
    Get.dialog(const AlertDialog(content: Aceptar()));
  }

  void aceptado(String subasta) {
    Get.rootDelegate.popRoute();
    Get.dialog(const AlertDialog(content: Aceptado()));
  }
}
