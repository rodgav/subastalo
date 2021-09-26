import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/comentarios/comentarios_widget/del_comentario.dart';

class ComentariosLogic extends GetxController {
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delComentario() {
    Get.dialog(const AlertDialog(content: DelComentario()));
  }
}
