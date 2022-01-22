import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/user.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/administradores/administradores_widget/del_admin.dart';
import 'package:subastalo/app/modules/administradores/administradores_widget/new_admin.dart';

class AdministradoresLogic extends GetxController {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final dniCtrl = TextEditingController();
  final password1Ctrl = TextEditingController();
  final password2Ctrl = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _dataRepository = Get.find<RemoteDataRepository>();
  UserModel? _userModel;

  UserModel? get userModel => _userModel;
  @override
  void onReady() {
    _usuarios();
    super.onReady();
  }
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void newAdmin() {
    Get.dialog(const AlertDialog(content: NewAdmin()));
  }

  void delAdmin() {
    Get.dialog(const AlertDialog(content: DelAdmin()));
  }

  void _usuarios() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _userModel = await _dataRepository.userAdmin(token);
      update(['usuarios']);
    }
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      final tokenModel = await _dataRepository.register(dniCtrl.text,
          nameCtrl.text, emailCtrl.text.trim(), password1Ctrl.text.trim(),'2');
      if (password1Ctrl.text == password2Ctrl.text) {
        if (tokenModel != null) {
          Get.rootDelegate.popRoute(); _usuarios();
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
