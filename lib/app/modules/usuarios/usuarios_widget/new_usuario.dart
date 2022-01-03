import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class NewUsuario extends StatelessWidget {
  const NewUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsuariosLogic>(builder: (_) {
      return Form(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: _.toBack,
                        icon:const  Icon(
                          Icons.close,
                          color: ColorsUtils.blue3,
                        ))
                  ],
                ),
                const Center(
                  child: ImageIcon(
                    AssetImage('assets/icons/usuarios.png'),
                    size: 60,
                  ),
                ),
                const Center(
                  child: Text(
                    'Añadir  usuario',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás gestionar los usuarios.',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Nombre de usuario',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.fullNameCtrl, validator: isNotEmpty,
                    width: 400,
                    hint: 'Ingresar normbre completo y apellidos',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('DNI / Carnet de identidad',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.dniCtrl, validator: isNotEmpty,
                    width: 400,
                    hint: 'Ingrese número de DNI/Carnet',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Número móvil',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.phoneCtrl, validator: isNotEmpty,
                    width: 400,
                    hint: 'Ingrese número',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Correo electrónico',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.emailCtrl, validator: isEmail,
                    width: 400,
                    hint: 'Ingrese correo',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Contraseña',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.password1Ctrl, validator: isPassword,
                    width: 400,
                    hint: 'ingresar contraseña',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Repetir contraseña',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(controller: _.password2Ctrl, validator: isPassword,
                    width: 400,
                    hint: 'Repetir contraseña',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 20),
                ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'Crear usuario',
                    voidCallback: () => null)
              ],
            ),
          ),
        ),
      );
    });
  }
}
