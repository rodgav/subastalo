import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/login/login_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final bool web = size.width > 800;
    return GetBuilder<LoginLogic>(builder: (_) {
      return Container(
        width: web ? size.width * 0.5 : size.width,
        height: web ? size.height * 0.9 : size.height * 0.65,
        decoration: const BoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Form(key: _.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¡Únete a Subastalo!',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                    const SizedBox(height: 20),
                    const Text(
                      'Regístrate para poder acceder a más oportunidades de\nsubasta.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    TxtFieldBor(
                        controller: _.nameCtrl,
                        validator: isNotEmpty,
                        width: 280,
                        hint: 'Nombre',
                        icon: const Icon(Icons.check),
                        enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                        focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                    const SizedBox(height: 20),
                    TxtFieldBor(
                        controller: _.dniCtrl,
                        validator: isNotEmpty,
                        width: 280,
                        hint: 'DNI / Carnet de extranjería',
                        icon: const Icon(Icons.check),
                        enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                        focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                    const SizedBox(height: 20),
                    TxtFieldBor(
                        controller: _.usernameCtrl,
                        validator: isEmail,
                        width: 280,
                        hint: 'Número o correo',
                        icon: const Icon(Icons.check),
                        enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                        focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                    const SizedBox(height: 20),
                    TxtFieldBor(
                        controller: _.passwordCtrl,
                        validator: isPassword,
                        width: 280,
                        hint: 'Contraseña',
                        icon: const Icon(Icons.remove_red_eye),
                        enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                        focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                    const SizedBox(height: 40),
                    ButtonWid(
                        width: 250,
                        height: 50,
                        color1: ColorsUtils.orange1,
                        color2: ColorsUtils.orange2,
                        textButt: 'Crear cuenta',
                        voidCallback: _.register),
                    const SizedBox(height: 40),
                    const Text(
                      '---------- O inicia con ----------',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(height: 10),
                    /*Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Container(
                              width: 47,
                              height: 25,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/linkedin.png'))),
                            ),
                            onTap: () {
                              debugPrint('click');
                            },
                          ),
                        ),
                        const SizedBox(width: 5),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Container(
                              width: 47,
                              height: 25,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/google.png'))),
                            ),
                            onTap: () {
                              debugPrint('click');
                            },
                          ),
                        ),
                        const SizedBox(width: 5),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Container(
                              width: 47,
                              height: 25,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/facebook.png'))),
                            ),
                            onTap: () {
                              debugPrint('click');
                            },
                          ),
                        ),
                        const SizedBox(width: 5),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: Container(
                              width: 47,
                              height: 25,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/twiter.png'))),
                            ),
                            onTap: () {
                              debugPrint('click');
                            },
                          ),
                        ),
                      ],
                    ),*/
                    const SizedBox(height: 20),
                    const Text(
                      '¿Ya tienes una cuenta?',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    TextButton(
                      style: ButtonStyle(
                          overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                      onPressed: () => _.changeLoginRegister('login'),
                      child: const Text(
                        'Inicia sesión',
                        style:
                        TextStyle(color: ColorsUtils.orange2, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
