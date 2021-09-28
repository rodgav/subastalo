import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/pagos/pagos_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NewPago extends StatelessWidget {
  const NewPago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagosLogic>(builder: (_) {
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
                    'Crear tipo de pago',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás gestionar los tipos de pago que tengas.',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Nombre de tipo de pago',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Introducir nombre',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Descripción',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    width: 400,
                    hint: 'Introducir desscripcción de pago',
                    maxLines: 3,
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 20),
                ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'Guardar tipo de pago',
                    voidCallback: () => null)
              ],
            ),
          ),
        ),
      );
    });
  }
}
