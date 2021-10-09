import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/administradores/administradores_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NewAdmin extends StatelessWidget {
  const NewAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdministradoresLogic>(builder: (_) {
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
                        icon: const Icon(
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
                    'Añadir administrador',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás gestionar los usuarios administradores.',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Nombre de completo',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Introducir nombre',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Correo electrónico',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Introducir correo electrónico',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Número',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Introducir número',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Genero',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorsUtils.grey1.withOpacity(0.5))),
                  width: 400,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    hint: const Text('Seleccionar genero'),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem<String>(child: Text('Varon'))
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 15),
                const Text('País',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorsUtils.grey1.withOpacity(0.5))),
                  width: 400,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    hint: const Text('Seleccionar país'),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem<String>(child: Text('Perú'))
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Contraseña',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'ingresar contraseña',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Repetir contraseña',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
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