import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Aceptado extends StatelessWidget {
  const Aceptado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaDetailLogic>(builder: (_) {
      return SingleChildScrollView(
        child: Container(
          width: 600,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: _.toBack,
                        icon: const Icon(
                          Icons.close,
                          color: ColorsUtils.grey2,
                        ))
                  ],
                ),  const SizedBox(
                  height: 15,
                ),
                const ImageIcon(
              AssetImage('assets/icons/pagos.png'),
              color: ColorsUtils.blue3,
              size: 100,
            ),
                const SizedBox(height: 20),
                const  Text(
              'Oferta aceptada',
              style: TextStyle(color: ColorsUtils.blue3, fontSize: 30),
              textAlign: TextAlign.center,
            ),
                const Text(
              'mejor postor de la subasta',
              style: TextStyle(
                  color: ColorsUtils.blue3,
                  fontWeight: FontWeight.bold,
                  fontSize: 40), textAlign: TextAlign.center,
            ),
                const Text(
              'Ofertante 1',
              style: TextStyle(color: ColorsUtils.blue3, fontSize: 30), textAlign: TextAlign.center,
            ),
                const SizedBox(height: 20),
                const Text(
              'US\$ 36,000',
              style: TextStyle(
                  color: ColorsUtils.blue3,
                  fontWeight: FontWeight.bold,
                  fontSize: 70), textAlign: TextAlign.center,
            ),
                const SizedBox(height: 20),
            RichText( textAlign: TextAlign.center,
                text: const TextSpan(children: [
              TextSpan(
                text: 'Precio Reserva: ',
                style: TextStyle(color: ColorsUtils.blue3, fontSize: 30),
              ),
              TextSpan(
                text: 'no alcanzado',
                style: TextStyle(
                    color: ColorsUtils.blue3,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ])),
                const   SizedBox(height: 30),
            ButtonWid(
                width: 400,
                height: 50,
                color1: ColorsUtils.orange1,
                color2: ColorsUtils.orange1,
                textButt: 'Aceptar',
                voidCallback: _.toBack),
                const  SizedBox(height: 30),
                const  Text(
              'Estaremos realizando las gestiones necesarias para concluir la oferta.',
              style: TextStyle(fontSize: 24), textAlign: TextAlign.center,
            )
          ]),
        ),
      );
    });
  }
}
