import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/administradores/administradores_widget/del_admin.dart';
import 'package:subastalo/app/modules/administradores/administradores_widget/new_admin.dart';

class AdministradoresLogic extends GetxController {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final password1Ctrl = TextEditingController();
  final password2Ctrl = TextEditingController();

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void newAdmin() {
    Get.dialog(const AlertDialog(content: NewAdmin()));
  }

  void delAdmin() {
    Get.dialog(const AlertDialog(content: DelAdmin()));
  }
}
