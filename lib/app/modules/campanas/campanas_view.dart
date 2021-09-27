import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'campanas_logic.dart';

class CampanasPage extends StatelessWidget {
  final logic = Get.find<CampanasLogic>();

  CampanasPage({Key? key}) : super(key: key);

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
                        Text('CAMPAÑAS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Aquí podrás gestionar tus campañas',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ButtonIconRWid(
                        width: 200,
                        height: 40,
                        color1: ColorsUtils.blue3,
                        color2: ColorsUtils.blue3,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Crear una campaña',
                        voidCallback: logic.newCampana)
                  ],
                ),
                const SizedBox(height: 20),
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
                              const Text(
                                  'CAMPAÑA PROMOCIONAL NAVIDAD AÑO NUEVO.',
                                  style: TextStyle(
                                      color: ColorsUtils.blue3,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                              const SizedBox(height: 20),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'PROMO CÓDIGO: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                TextSpan(
                                    text: 'NKSJ9939',
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
                        SizedBox(
                          width: width / 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Monto de descuento',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                '10% en todos los productos',
                                style: TextStyle(fontSize: 12),
                              ),
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
                                textButt: 'Editar campaña',
                                voidCallback: () => null),
                            const SizedBox(height: 10),
                            ButtonIconRWid(
                                width: 200,
                                height: 40,
                                color1: ColorsUtils.red,
                                color2: ColorsUtils.red,
                                assetIcon: 'assets/icons/buscar.png',
                                textButt: 'Eliminar campaña',
                                voidCallback: logic.delCampana),
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
