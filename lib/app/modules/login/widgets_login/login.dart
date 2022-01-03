import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/login/login_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    const Text('¡Inicia sesión!',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                    const SizedBox(height: 20),
                    const Text(
                      'Inicia sesión para poder acceder a más\noportunidades de subasta.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    TxtFieldBor(
                        controller: _.usernameCtrl, validator: isEmail,
                        width: 280,
                        hint: 'Número o correo',
                        icon: const Icon(Icons.check),
                        enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                        focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                    const SizedBox(height: 20),
                    /* Container(
                      width: 280,
                      padding:const EdgeInsets.symmetric(
                          horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                              color: ColorsUtils.grey1.withOpacity(0.5))),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        isExpanded:true,
                        items: const [
                          DropdownMenuItem(child: Text('usuario')),
                        ],
                        onChanged: (value) => null,
                      ),
                    ),
                    const SizedBox(height: 20),*/
                    TxtFieldBor(
                        controller: _.passwordCtrl, validator: isPassword,
                        obscureText: true,
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
                        textButt: 'Iniciar sesión',
                        voidCallback: _.login),
                    const SizedBox(height: 40),
                    const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        '¿Olvidaste la contraseña?',
                        style:
                            TextStyle(color: ColorsUtils.orange2, fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      onPressed: () => _.changeLoginRegister('register'),
                      child: const Text(
                        'Regístrate',
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
