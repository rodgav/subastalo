import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/localizaciones/localizaciones_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class EditDepartamento extends StatelessWidget {
  const EditDepartamento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizacionesLogic>(builder: (_) {
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
                    AssetImage('assets/icons/localizaciones.png'),
                    size: 60,
                  ),
                ),
                const Center(
                  child: Text(
                    'Editar departamento',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás editar las localizaciones.',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Seleccione un país para el stio web',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ColorsUtils.grey1)),
                  width: 400,
                  height: 50,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    hint: const Text('Paises'),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem<String>(child: Text('PERÚ'))
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Ingrese un departamento',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Ingrese nombre de departamento',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 20),
                ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.blue3,
                    color2: ColorsUtils.blue3,
                    textButt: 'Guardar departamento',
                    voidCallback: () => null)
              ],
            ),
          ),
        ),
      );
    });
  }
}
