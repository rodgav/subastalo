import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/pagos/pagos_widget/del_pago.dart';
import 'package:subastalo/app/modules/pagos/pagos_widget/new_pago.dart';

class PagosLogic extends GetxController {
  final nameCtrl = TextEditingController();
  final descripCtrl = TextEditingController();
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void newPago() {
    Get.dialog(const AlertDialog(content: NewPago()));
  }

  void delPago() {
    Get.dialog(const AlertDialog(content: DelPago()));
  }
}
