import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'pagos_logic.dart';

class PagosPage extends StatelessWidget {
  final logic = Get.find<PagosLogic>();

  PagosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('PAGOS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Aquí podrás gestionar tus formas de pago',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ButtonIconRWid(
                        width: 200,
                        height: 40,
                        color1: ColorsUtils.blue3,
                        color2: ColorsUtils.blue3,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Crear tipo de pago',
                        voidCallback: logic.newPago)
                  ],
                ),
                const Divider(height: 20),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    width: width,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runAlignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/buscar.png',
                          width: 124,
                          height: 95,
                        ),
                        SizedBox(
                          width: width / 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('TRANSFERENCIA DIRECTA',
                                  style: TextStyle(
                                      color: ColorsUtils.blue3,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                              const SizedBox(height: 20),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'CUENTA BANCARIA: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                TextSpan(
                                    text: '89379283290392',
                                    style: TextStyle(fontSize: 12)),
                              ]))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width / 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Fecha Inicio: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                TextSpan(
                                    text: '09/12/2020',
                                    style: TextStyle(fontSize: 12)),
                              ])),
                              const SizedBox(height: 20),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Fecha Fin: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                TextSpan(
                                    text: '05/01/2021',
                                    style: TextStyle(fontSize: 12)),
                              ]))
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ButtonIconRWid(
                                width: 200,
                                height: 40,
                                color1: ColorsUtils.blue3,
                                color2: ColorsUtils.blue3,
                                assetIcon: 'assets/icons/buscar.png',
                                textButt: 'Editar tipo de pago',
                                voidCallback: () => null),
                            const SizedBox(height: 10),
                            ButtonIconRWid(
                                width: 200,
                                height: 40,
                                color1: ColorsUtils.red,
                                color2: ColorsUtils.red,
                                assetIcon: 'assets/icons/buscar.png',
                                textButt: 'Eliminar tipo de pago',
                                voidCallback: logic.delPago),
                          ],
                        )
                      ],
                    ),
                  ),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 10),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
