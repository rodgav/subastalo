import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';

class UsuariosDetailLogic extends GetxController {
  final String usuarioId;

  UsuariosDetailLogic(this.usuarioId);

  final _localDataRepository = Get.find<LocalDataRepository>();
  SubastasModel? _subastasModel;

  SubastasModel? get subastasModel => _subastasModel;

  @override
  void onReady() {
    _getSubastas();
    super.onReady();
  }

  Future<void> _getSubastas() async {
    _subastasModel = await _localDataRepository.getSubastas();
    update(['subastas']);
  }

  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }
}
