import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/models/user.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';

class UsuariosDetailLogic extends GetxController {
  final fullNameCtrl = TextEditingController();
  final dniCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final password1Ctrl = TextEditingController();
  final password2Ctrl = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final String usuarioId;

  UsuariosDetailLogic(this.usuarioId);

  final _dataRepository = Get.find<RemoteDataRepository>();

  User? _user;

  User? get user => _user;

  final _localDataRepository = Get.find<LocalDataRepository>();
  SubastaModel? _subastaModel;

  SubastaModel? get subastaModel => _subastaModel;

  @override
  void onReady() {
    _userId();
    super.onReady();
  }

  void _userId() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _user = await _dataRepository.userId(token, usuarioId);
      update(['usuario']);
    }
    _getSubastas();
  }

  Future<void> _getSubastas() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subastaModel = await _dataRepository.subastasUser(token, usuarioId);
      update(['subastas']);
    }
  }

  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      final tokenModel = await _dataRepository.register(dniCtrl.text,
          fullNameCtrl.text, emailCtrl.text.trim(), password1Ctrl.text.trim(),'1');
      if (password1Ctrl.text == password2Ctrl.text) {
        if (tokenModel != null) {
          Get.rootDelegate.popRoute();
        } else {
          DialogService.to.snackBar(Colors.red, 'ERROR',
              'Ocurrio un error, vuelva a intentarlo luego');
        }
      } else {
        DialogService.to
            .snackBar(Colors.red, 'ERROR', 'Las contraseñas deben ser iguales');
      }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }
}
