import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Aceptar extends StatelessWidget {
  const Aceptar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaDetailLogic>(builder: (_) {
      return SingleChildScrollView(
        child: Container(
          width: web ? 900 : 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Oferta de subasta',
                  style: TextStyle(color: ColorsUtils.blue3, fontSize: 26),
                ),
                IconButton(
                    onPressed: _.toBack,
                    icon: const Icon(
                      Icons.close,
                      color: ColorsUtils.grey2,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Datos de la subasta',
                style: TextStyle(color: ColorsUtils.grey1)),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: web ? 900 : 400,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nombre del ofertante',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                        Container(
                            decoration:
                            const BoxDecoration(color: Color(0xffECECEC)),
                            padding: const EdgeInsets.all(5),
                            width: 400,
                            child: const Text(
                              'Adolfo Nolte Ocampo',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(height: 10),
                        const Text(
                          'Precio ofertado',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                        Container(
                            decoration:
                            const BoxDecoration(color: Color(0xffECECEC)),
                            padding: const EdgeInsets.all(5),
                            width: 400,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'US\$ 23.000',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Ganador',
                                  style: TextStyle(
                                      fontSize: 20, color: ColorsUtils.blue2),
                                ),
                              ],
                            )),
                        const SizedBox(height: 20),
                        const Text(
                          'Propuestas Reibidas',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                        Container(
                            decoration:
                            const BoxDecoration(color: Color(0xffECECEC)),
                            padding: const EdgeInsets.all(5),
                            width: 400,
                            height: 120,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (__, index) => Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Ofertante $index'),
                                  const SizedBox(width: 10),
                                  Text('US\$ 2$index.000')
                                ],
                              ),
                              itemCount: 5,
                            )),
                        const SizedBox(height: 20),
                        ButtonWid(
                            width: 400,
                            height: 50,
                            color1: ColorsUtils.grey1,
                            color2: ColorsUtils.grey1,
                            textButt: 'Rechazar',
                            voidCallback: () => null)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 400,
                          height: 200,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/chevrolet.png'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'MINICARGADOR HYUNDAI HSL850-7A DEL 2018 - Cabina abierta',
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Año de fabricación',
                                style: TextStyle(
                                    fontSize: 9, color: ColorsUtils.grey1)),
                            Text('2019',
                                style: TextStyle(
                                    fontSize: 9, color: ColorsUtils.grey1)),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Número de placa',
                                style: TextStyle(
                                    fontSize: 9, color: ColorsUtils.grey1)),
                            Text('PER-7847',
                                style: TextStyle(
                                    fontSize: 9, color: ColorsUtils.grey1)),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(height: 20),
                        ButtonWid(
                            width: 400,
                            height: 50,
                            color1: ColorsUtils.orange1,
                            color2: ColorsUtils.orange1,
                            textButt: 'Aceptar',
                            voidCallback: () => _.aceptado('123'))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      );
    });
  }
}
