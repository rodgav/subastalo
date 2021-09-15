import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class UltimaSubastaWid extends StatelessWidget {
  const UltimaSubastaWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.web,
              color: Colors.red,
              size: 78,
            ),
            SizedBox(width: 10),
            Text(
              'MIRA LA ÚLTIMA \n SUBASTA',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: 600,
          height: 376,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: ColorsUtils.white,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Productos subastados',
                    style: TextStyle(color: ColorsUtils.blue3, fontSize: 16),
                  ),
                  Text(
                    'Lote de Saldos de ferretería y otros materiales.',
                    style: TextStyle(color: ColorsUtils.orange2, fontSize: 18),
                  ),
                  Text(
                    'HNOS. ASOCIADOS 1',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Container(
                    width: 378,
                    height: 94,
                    decoration: BoxDecoration(
                        color: ColorsUtils.grey1,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  Container(
                    width: 378,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Precio base',
                                  style: TextStyle(
                                      color: ColorsUtils.blue3, fontSize: 15)),
                              Text('US\$ 3.500.00',
                                  style: TextStyle(
                                      color: ColorsUtils.orange2,
                                      fontSize: 24)),
                            ]),
                        Container(
                          height: 56,
                          width: 1,
                          color: ColorsUtils.orange2,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Precio base',
                                  style: TextStyle(
                                      color: ColorsUtils.blue3, fontSize: 15)),
                              Text('US\$ 3.500.00',
                                  style: TextStyle(
                                      color: ColorsUtils.orange2,
                                      fontSize: 24)),
                            ]),
                      ],
                    ),
                  ),
                  Container(
                    width: 378,
                    height: 83,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: ColorsUtils.grey1.withOpacity(0.5))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Danilo 33',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 12),
                        ),
                        Text(
                          '“No habia participado en subastas en línea,'
                          ' me guiaron desde el principio y pude participar,'
                          ' me sentí a gusto”',
                          style: TextStyle(fontSize: 10),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Calificación',
                                style: TextStyle(
                                    color: ColorsUtils.blue3, fontSize: 10))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 127,
                    height: 184,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorsUtils.orange1, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: ColorsUtils.blue3,
                          size: 25,
                        ),
                        Text(
                          '25 ofertantes',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 10),
                        ),
                        Divider(
                          color: ColorsUtils.orange1,
                        ),
                        Icon(
                          Icons.email,
                          color: ColorsUtils.blue3,
                          size: 25,
                        ),
                        Text(
                          '10 pujas',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: 128,
                      height: 119,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
