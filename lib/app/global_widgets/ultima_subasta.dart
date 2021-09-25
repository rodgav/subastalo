import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class UltimaSubastaWid extends StatelessWidget {
  const UltimaSubastaWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Column(
      crossAxisAlignment:
          web ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icons/copa.png', width: 78, height: 78),
            const SizedBox(width: 20),
            const Text(
              'MIRA LA ÚLTIMA \n SUBASTA',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 600,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: ColorsUtils.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: ColorsUtils.grey1.withOpacity(0.5), blurRadius: 7)
              ]),
          child: Wrap(
            alignment: web ? WrapAlignment.spaceBetween : WrapAlignment.center,
            runAlignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              SizedBox(
                height: 325,
                child: Column(
                  crossAxisAlignment: web
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Productos subastados',
                      style: TextStyle(color: ColorsUtils.blue3, fontSize: 16),
                    ),
                    const Text(
                      'Lote de Saldos de ferretería y otros materiales.',
                      style: TextStyle(
                          color: ColorsUtils.orange2,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'HNOS. ASOCIADOS 1',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Container(
                      width: web ? 378 : double.infinity,
                      height: 94,
                      decoration: BoxDecoration(
                          color: ColorsUtils.grey1,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/lote.png'))),
                    ),
                    SizedBox(
                      width: web ? 378 : double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('Precio base',
                                    style: TextStyle(
                                        color: ColorsUtils.blue3,
                                        fontSize: 15)),
                                Text('US\$ 3.500.00',
                                    style: TextStyle(
                                        color: ColorsUtils.orange2,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ]),
                          Container(
                            height: 56,
                            width: 1,
                            color: ColorsUtils.orange2,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('Precio base',
                                    style: TextStyle(
                                        color: ColorsUtils.blue3,
                                        fontSize: 15)),
                                Text('US\$ 3.500.00',
                                    style: TextStyle(
                                        color: ColorsUtils.orange2,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ],
                      ),
                    ),
                    Container(
                      width: web ? 378 : double.infinity,
                      height: 83,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: ColorsUtils.grey1.withOpacity(0.5))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Danilo 33',
                            style: TextStyle(
                                color: ColorsUtils.blue3, fontSize: 12),
                          ),
                          const Text(
                            '“No habia participado en subastas en línea,'
                            ' me guiaron desde el principio y pude participar,'
                            ' me sentí a gusto”',
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
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
              ),
              SizedBox(
                height: 325,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 127,
                      height: 184,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: ColorsUtils.orange1, width: 2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/personas.png'),
                            color: ColorsUtils.blue3,
                            size: 40,
                          ),
                          Text(
                            '25 ofertantes',
                            style: TextStyle(
                                color: ColorsUtils.blue3, fontSize: 10),
                          ),
                          Divider(
                            color: ColorsUtils.orange1,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/pujas.png'),
                            color: ColorsUtils.blue3,
                            size: 40,
                          ),
                          Text(
                            '10 pujas',
                            style: TextStyle(
                                color: ColorsUtils.blue3, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 128,
                      height: 119,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/play.png'),
                            size: 64,
                            color: ColorsUtils.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'VER VIDEO',
                            style: TextStyle(color: ColorsUtils.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
