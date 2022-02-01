import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/comment.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/comentarios/comentarios_widget/del_comentario.dart';
import 'package:subastalo/utils/colors_utils.dart';

class ComentariosLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  CommentModel? _commentModel;

  CommentModel? get commentModel => _commentModel;

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delComentario(int idComm) {
    Get.dialog(AlertDialog(content: DelComentario(idComm)));
  }

  void saveDelComen(int idComm) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final comment = await _dataRepository.deleComment(token, idComm);
      if (comment) {
        _comentarios();
        toBack();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo eliminar el comentario');
      }
    }
  }
  void saveAprobComen(int idComm) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final comment = await _dataRepository.updaComment(token, idComm);
      if (comment) {
        _comentarios();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo aprobar el comentario');
      }
    }
  }

  @override
  void onReady() {
    _comentarios();
    super.onReady();
  }

  void _comentarios() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _commentModel = await _dataRepository.comment(token);
      update(['comentarios']);
    }
  }
}
