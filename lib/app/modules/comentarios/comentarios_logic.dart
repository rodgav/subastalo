import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/comment.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/modules/comentarios/comentarios_widget/del_comentario.dart';

class ComentariosLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  CommentModel? _commentModel;

  CommentModel? get commentModel => _commentModel;

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void delComentario() {
    Get.dialog(const AlertDialog(content: DelComentario()));
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
