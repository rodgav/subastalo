import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class LoginLogic extends GetxController {
  bool _loginRegister = true;

  bool get loginRegister => _loginRegister;

  void changeLoginRegister(String loginRegister) {
    if (loginRegister == 'login') {
      _loginRegister = true;
    } else {
      _loginRegister = false;
    }
    update(['loginRegister']);
  }

  void login() async {
    AuthService.to.login('123456');
    Get.rootDelegate.offNamed(Routes.dashboard);
  }
}
