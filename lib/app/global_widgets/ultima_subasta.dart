import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class UltimaSubastaWid extends StatelessWidget {
  const UltimaSubastaWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return SizedBox(
      width: web ? size.width * 0.4 : size.width,
      child: Column(
        crossAxisAlignment:
            web ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/icons/copa.png', width: 78, height: 78),
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  'MIRA LA ÚLTIMA \n SUBASTA',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: web ? size.width * 0.4 : size.width,
            height: 360,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: ColorsUtils.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: ColorsUtils.grey1.withOpacity(0.5), blurRadius: 7)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: web ? size.width * 0.25 : size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Productos subastados',
                        style:
                            TextStyle(color: ColorsUtils.blue3, fontSize: 16),
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
                        width: web ? size.width * 0.25 : size.width * 0.5,
                        height: 94,
                        decoration: BoxDecoration(
                            color: ColorsUtils.grey1,
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(fit: BoxFit.cover,
                                image: AssetImage('assets/images/lote.png'))),
                      ),
                      SizedBox(
                        width: web ? size.width * 0.25 : size.width * 0.5,
                        child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: web ? size.width * 0.12 : size.width*0.22,
                                  child:FittedBox(fit: BoxFit.scaleDown,
                                      child: RichText(
                                    text:const TextSpan(children: [
                                      TextSpan(
                                          text: 'Precio base\n',
                                          style: TextStyle(
                                              color: ColorsUtils.blue3,
                                              fontSize: 15)),
                                      TextSpan(
                                          text: 'US\$ 3.500.00',
                                          style: TextStyle(
                                              color: ColorsUtils.orange2,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold)),
                                    ]),
                                  )),),
                              Container(
                                height: 50,
                                width: 1,
                                color: ColorsUtils.orange2,
                              ),
                              SizedBox(
                                  width: web ? size.width * 0.12 : size.width*0.22,
                                  child: FittedBox(fit: BoxFit.scaleDown,
                                    child: RichText(
                                      text:const TextSpan(children: [
                                        TextSpan(
                                            text:'Precio base\n',
                                            style: TextStyle(
                                                color: ColorsUtils.blue3,
                                                fontSize: 15)),
                                        TextSpan(
                                          text:
                                          'US\$ 3.500.00',
                                          style: TextStyle(
                                              color: ColorsUtils.orange2,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ]),
                                    ),
                                  )),
                            ],
                          ),
                      ),
                      Container(
                        width: web ? size.width * 0.25 : size.width * 0.6,
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
                            const Expanded(
                              child: Text(
                                '“No habia participado en subastas en línea,'
                                ' me guiaron desde el principio y pude participar,'
                                ' me sentí a gusto”',
                                style: TextStyle(fontSize: 10),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
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
                  width: web ? size.width * 0.1 : size.width * 0.2,
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
                            border: Border.all(
                                color: ColorsUtils.orange1, width: 2),
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
                              AssetImage('assets/icons/mano.png'),
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
                          children:  [
                            ImageIcon(
                              const AssetImage('assets/icons/play.png'),
                              size: web?64:24,
                              color: ColorsUtils.white,
                            ),
                            const SizedBox(height: 10),
                            const  Text(
                              'VER VIDEO',
                              style: TextStyle(color: ColorsUtils.white),
                              textAlign: TextAlign.center,
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
      ),
    );
  }
}
