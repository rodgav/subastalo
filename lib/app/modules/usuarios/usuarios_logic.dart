import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/user.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/del_usuario.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/edit_usuario.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/new_usuario.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class UsuariosLogic extends GetxController {
  final fullNameCtrl = TextEditingController();
  final dniCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final password1Ctrl = TextEditingController();
  final password2Ctrl = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final editFullNameCtrl = TextEditingController();
  final editDniCtrl = TextEditingController();
  final editEmailCtrl = TextEditingController();
  final editPassword1Ctrl = TextEditingController();
  final editPassword2Ctrl = TextEditingController();

  final _dataRepository = Get.find<RemoteDataRepository>();

  UserModel? _userModel;

  UserModel? get userModel => _userModel;

  void newUser() {
    Get.dialog(const AlertDialog(content: NewUsuario()));
  }

  void editUser(User user) {
    Get.dialog(AlertDialog(content: EditUsuario(user.id)));
    editFullNameCtrl.text = user.name;
    editDniCtrl.text = user.dni;
    editEmailCtrl.text = user.email;
  }

  void editSaveUsuario(int idUser) async {
    if (editPassword1Ctrl.text == editPassword2Ctrl.text) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final response = await _dataRepository.editUser(
            token,
            idUser,
            editDniCtrl.text,
            editFullNameCtrl.text,
            editEmailCtrl.text.trim(),
            editPassword1Ctrl.text.trim(),
            '1');
        if(response){
          editDniCtrl.clear();
          editFullNameCtrl.clear();
          editEmailCtrl.clear();
          editPassword1Ctrl.clear();
          editPassword2Ctrl.clear();
          _usuarios();
          toBack();
        }else{
          DialogService.to
              .snackBar(Colors.red, 'ERROR', 'No se pudo editar el usuario');
        }
      }
    } else {
      DialogService.to
          .snackBar(Colors.red, 'ERROR', 'Las contraseñas deben ser iguales');
    }
  }

  void delUser(int idUser) {
    Get.dialog( AlertDialog(content: DelUsuario(idUser)));
  }

  void saveDelUser(int idUser) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final response = await _dataRepository.deleteUser(token, idUser);
      if (response) {
        _usuarios();
        toBack();
      } else {
        DialogService.to
            .snackBar(Colors.red, 'ERROR', 'No se pudo eliminar el usuario');
      }
    }
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
      if (password1Ctrl.text == password2Ctrl.text) {
        final tokenModel = await _dataRepository.register(
            dniCtrl.text,
            fullNameCtrl.text,
            emailCtrl.text.trim(),
            password1Ctrl.text.trim(),
            '1');
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
