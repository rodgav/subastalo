import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/del_usuario.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class UsuariosLogic extends GetxController {
  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void delUser() {
    Get.dialog(const AlertDialog(content: DelUsuario()));
  }

  void toUsuariosDetail(String usuarioId) {
    Get.rootDelegate.toNamed(Routes.usuariosDetail(usuarioId));
  }
  void toBack() {
    Get.rootDelegate.popRoute();
  }
}
