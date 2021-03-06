import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class LoginLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();
  final formKey = GlobalKey<FormState>();

  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final dniCtrl = TextEditingController();
  bool _loginRegister = true;

  bool get loginRegister => _loginRegister;
  @override
  void onReady() {
    usernameCtrl.text='prueba1@gmail.com';
    passwordCtrl.text='123456789';
    super.onReady();
  }

  void changeLoginRegister(String loginRegister) {
    if (loginRegister == 'login') {
      _loginRegister = true;
    } else {
      _loginRegister = false;
    }
    update(['loginRegister']);
  }

  void login() async {
    if (formKey.currentState!.validate()) {
      final tokenModel = await _dataRepository.login(
          usernameCtrl.text.trim(), passwordCtrl.text.trim());
      if (tokenModel != null) {
        if(tokenModel.jwt!='') {
          await AuthService.to.saveSession(tokenModel);
          Get.rootDelegate.offNamed(Routes.dashboard);
        }else{
          DialogService.to.snackBar(
              Colors.red, 'ERROR', 'Usuario y/o contraseñas incorrectas');
        }
      } else {
        DialogService.to.snackBar(
            Colors.red, 'ERROR', 'Ocurrio un error, vuelva a intentarlo luego');
      }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }

  void register() async {
    if (formKey.currentState!.validate()) {
      final tokenModel = await _dataRepository.register(dniCtrl.text,
          nameCtrl.text, usernameCtrl.text.trim(), passwordCtrl.text.trim(),'1');
      if (tokenModel != null) {
        await AuthService.to.saveSession(tokenModel);
        Get.rootDelegate.offNamed(Routes.dashboard);
      } else {
        DialogService.to.snackBar(Colors.red, 'ERROR', 'Ocurrio un error, vuelva a intentarlo luego');
      }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }
}
