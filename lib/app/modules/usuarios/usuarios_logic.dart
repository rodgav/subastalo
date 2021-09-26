import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/del_usuario.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';

class UsuariosLogic extends GetxController {
  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void delUser() {
    Get.dialog(const AlertDialog(content: DelUsuario()));
  }
}
