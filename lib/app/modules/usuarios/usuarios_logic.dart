import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/user.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/del_usuario.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class UsuariosLogic extends GetxController {
  final fullNameCtrl = TextEditingController();
  final dniCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final password1Ctrl = TextEditingController();
  final password2Ctrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final _dataRepository = Get.find<RemoteDataRepository>();

  UserModel? _userModel;

  UserModel? get userModel => _userModel;

  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void delUser(int idUser) {
    Get.dialog(const AlertDialog(content: DelUsuario()));
  }

  void toUsuariosDetail(String usuarioId) {
    Get.rootDelegate.toNamed(Routes.usuariosDetail(usuarioId));
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  @override
  void onReady() {
    _usuarios();
    super.onReady();
  }

  void _usuarios() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _userModel = await _dataRepository.user(token);
      update(['usuarios']);
    }
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
