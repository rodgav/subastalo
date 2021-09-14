import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Destacado2 extends StatelessWidget {
  const Destacado2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: 646,
      padding:
          EdgeInsets.only(top: 25.07, right: 35.11, left: 36.06, bottom: 23.92),
      decoration: BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey1, offset: Offset(0, 3), blurRadius: 7)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CAMIÓN  CHEVROLET KODIAK 240 MOD. 19994 SAK 172',
            style: TextStyle(color: ColorsUtils.blue3, fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: web ? 382.59 : 646,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vendedor',
                  style: TextStyle(color: ColorsUtils.grey1, fontSize: 13),
                ),
                Text(
                  'HNOS. ASOCIADOS',
                  style: TextStyle(color: ColorsUtils.grey1, fontSize: 13),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 646,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment:
                    web ? WrapAlignment.spaceBetween : WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 382.59,
                        height: 172.51,
                        decoration: BoxDecoration(
                            color: ColorsUtils.grey1,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: web ? 382.59 : 646,
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: ColorsUtils.grey2,
                              size: 17,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'INICIA',
                                  style: TextStyle(
                                      color: ColorsUtils.grey2, fontSize: 13)),
                              TextSpan(
                                  text: ' Martes 03 de Nov. | 3:00 pm',
                                  style: TextStyle(
                                      color: ColorsUtils.grey1, fontSize: 13))
                            ]))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonWid(
                          width: web ? 382.59 : 646,
                          height: 50,
                          color1: ColorsUtils.orange1,
                          color2: ColorsUtils.orange2,
                          textButt: 'Deseo participar'),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 174.09,
                        height: 172.14,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: ColorsUtils.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: ColorsUtils.grey2,
                                  offset: Offset(0, 1.5),
                                  blurRadius: 7)
                            ]),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.height,
                                color: ColorsUtils.orange1,
                              ),
                              Text(
                                'Abierto para ofertas',
                                style: TextStyle(fontSize: 10),
                              ),
                              Divider(
                                color: ColorsUtils.orange1,
                              ),
                              Icon(
                                Icons.remove_red_eye,
                                color: ColorsUtils.orange1,
                              ),
                              Text(
                                '465 vistas',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '',
                            style: TextStyle(
                                color: ColorsUtils.grey2, fontSize: 13)),
                      ])),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 174.09,
                        height: 52.63,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: ColorsUtils.orange1, width: 2.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Precio reserva',
                                style: TextStyle(
                                    color: ColorsUtils.orange1, fontSize: 8)),
                            Text('US\$ 300.00',
                                style: TextStyle(
                                    color: ColorsUtils.orange1, fontSize: 20)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
