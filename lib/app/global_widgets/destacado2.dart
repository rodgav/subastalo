import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/card1.dart';
import 'package:subastalo/app/global_widgets/like.dart';
import 'package:subastalo/app/global_widgets/price.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Destacado2 extends StatelessWidget {
  final Subasta subasta;
  final VoidCallback voidCallback;

  const Destacado2(
      {Key? key, required this.subasta, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: web ? size.width * 0.35 : size.width * 0.97,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: web ? 40 : 10),
      padding: EdgeInsets.all(web ? 20 : 10),
      decoration: const BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey1, offset: Offset(0, 3), blurRadius: 7)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: web ? size.width * 0.35 : size.width,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                subasta.name,
                style: const TextStyle(
                    color: ColorsUtils.blue3,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: web ? size.width * 0.22 : size.width * 0.6,
            child: Align(alignment: Alignment.centerLeft,
                child:FittedBox(
                fit: BoxFit.scaleDown,
                child:  RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                      text: 'Vendedor ',
                      style: TextStyle(color: ColorsUtils.grey1, fontSize: 13),
                    ),
                    TextSpan(
                      text: subasta.nameVendedor,
                      style:
                          const TextStyle(color: ColorsUtils.grey1, fontSize: 13),
                    ),
                  ])),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: web ? size.width * 0.35 : size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: web ? size.width * 0.23 : size.width * 0.6,
                    child: Column(
                      children: [
                        Container(
                          width: web ? size.width * 0.23 : size.width * 0.6,
                          height: 172.51,
                          decoration: BoxDecoration(
                              color: ColorsUtils.grey1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: AssetImage(subasta.imagePrimary),
                                  fit: BoxFit.cover)),
                          child: const Like(left: 10, top: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: web ? size.width * 0.23 : size.width * 0.6,
                          child: Row(
                            children: [
                              const ImageIcon(
                                AssetImage('assets/icons/calendario2.png'),
                                color: ColorsUtils.grey2,
                                size: 17,
                              ),
                              const SizedBox(width: 5),
                              SizedBox(
                                width: web
                                    ? (size.width * 0.10)
                                    : (size.width * 0.50),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: RichText(
                                      text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'INICIA',
                                        style: TextStyle(
                                            color: ColorsUtils.grey2,
                                            fontSize: 13)),
                                    TextSpan(
                                        text: ' Martes 03 de Nov. | 3:00 pm',
                                        style: TextStyle(
                                            color: ColorsUtils.grey1,
                                            fontSize: 13))
                                  ])),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ButtonWid(
                            width: web ? size.width * 0.23 : size.width * 0.6,
                            height: 50,
                            color1: ColorsUtils.orange1,
                            color2: ColorsUtils.orange2,
                            textButt: 'Deseo participar',
                            voidCallback: voidCallback),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: web ? size.width * 0.07 : size.width * 0.2,
                    child: Column(
                      children: [
                        Card1Wid(
                            views: subasta.views,
                            width: web ? size.width * 0.07 : size.width * 0.2),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: '',
                              style: TextStyle(
                                  color: ColorsUtils.grey2, fontSize: 13)),
                        ])),
                        const SizedBox(
                          height: 20,
                        ),
                        PriceWid(
                            price: subasta.price,
                            width: web ? size.width * 0.07 : size.width * 0.2),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
