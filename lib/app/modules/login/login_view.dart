import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/footer_dashboard.dart';
import 'package:subastalo/app/modules/login/widgets_login/login.dart';
import 'package:subastalo/app/modules/login/widgets_login/register.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'login_logic.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final logic = Get.find<LoginLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
            height: size.height * 0.9,
            child: Column(
              children: [
                Wrap(
                  children: [
                    Container(
                      width: web ? size.width * 0.5 : size.width,
                      height: web ? size.height * 0.9 : size.height * 0.25,
                      decoration: const BoxDecoration(
                          color: ColorsUtils.black1,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100))),
                      child: Center(
                        child:
                            Image.asset('assets/images/logo.png', width: 300),
                      ),
                    ),
                    GetBuilder<LoginLogic>(
                        id: 'loginRegister',
                        builder: (_) {
                          return _.loginRegister
                              ? const Login()
                              : const Register();
                        })
                  ],
                )
              ],
            )),
        const FooterDashboard()
      ],
    ));
  }
}
