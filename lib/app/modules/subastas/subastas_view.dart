import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/card1.dart';
import 'package:subastalo/app/global_widgets/destacado1.dart';
import 'package:subastalo/app/global_widgets/destacado2.dart';
import 'package:subastalo/app/global_widgets/footer.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/oferta_negociable.dart';
import 'package:subastalo/app/global_widgets/price.dart';
import 'package:subastalo/app/global_widgets/subasta_empresa.dart';
import 'package:subastalo/app/global_widgets/ultima_subasta.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'subastas_logic.dart';

class SubastasPage extends StatelessWidget {
  const SubastasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<SubastasLogic>(builder: (_) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.6,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.6,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/bgSlider.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        right: 0,
                        left: web ? null : 0,
                        child: Image.asset('assets/images/autos.png',
                            width: web ? size.width * 0.5 : size.width,
                            height:
                                web ? size.height * 0.6 : size.height * 0.3)),
                    Positioned(
                      bottom: web ? null : 20,
                      child: Container(
                        height: web ? size.height * 0.6 : size.height * 0.3,
                        width: size.width * 0.4,
                        margin: EdgeInsets.only(left: web ? 50 : 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.4,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: RichText(
                                      textAlign: TextAlign.start,
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'PROXIMA SUBASTA\n\n',
                                            style: TextStyle(
                                                color: ColorsUtils.white,
                                                fontSize: 26)),
                                        TextSpan(
                                            text: 'LOTES DE AUTOS \n',
                                            style: TextStyle(
                                                color: ColorsUtils.white,
                                                fontSize: 50,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: 'Siniestrados y usados',
                                            style: TextStyle(
                                                color: ColorsUtils.white,
                                                fontSize: 50,
                                                fontWeight: FontWeight.bold)),
                                      ])),
                                ),
                              ),
                            ),
                            SizedBox(height: web ? 30 : 5),
                            SizedBox(
                              width: size.width * 0.4,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: web?80:40,
                                      height: size.height * 0.1,
                                      child:const Align(
                                        alignment: Alignment.centerLeft,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text('28',
                                              style: TextStyle(
                                                  color: ColorsUtils.white,
                                                  fontSize: 80,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      )),
                                  SizedBox(
                                    width: size.width * 0.1,
                                    height: size.height * 0.1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RichText(
                                          textAlign: TextAlign.start,
                                          text: const TextSpan(children: [
                                            TextSpan(
                                                text: 'de \n',
                                                style: TextStyle(
                                                    color: ColorsUtils.white,
                                                    fontSize: 26)),
                                            TextSpan(
                                                text: 'OCTUBRE',
                                                style: TextStyle(
                                                    color: ColorsUtils.white,
                                                    fontSize: 26)),
                                          ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  web
                                      ? Container(
                                          width: 3,
                                          height: size.height * 0.1,
                                          color: ColorsUtils.white)
                                      : const Divider(
                                          color: ColorsUtils.white,
                                        ),
                                  SizedBox(
                                      width: size.width * 0.1,
                                      height: size.height * 0.1,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: RichText(
                                            textAlign: TextAlign.start,
                                            text: const TextSpan(children: [
                                              TextSpan(
                                                  text: '3:30 pm \n',
                                                  style: TextStyle(
                                                      color: ColorsUtils.white,
                                                      fontSize: 26)),
                                              TextSpan(
                                                  text: 'Lima - Perú',
                                                  style: TextStyle(
                                                      color: ColorsUtils.white,
                                                      fontSize: 26)),
                                            ]),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(height: web ? 30 : 5),
                            Center(
                              child: ButtonWid(
                                  width:size.width * 0.3,
                                  height: web ? size.height * 0.08 : size.height * 0.05,
                                  color1: ColorsUtils.orange1,
                                  color2: ColorsUtils.orange2,
                                  textButt: 'Deseo participar',
                                  voidCallback: () => null),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: Container(
                          width: size.width * 0.3,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: ColorsUtils.orange1.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10)),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'US \$15,000\n',
                                    style: TextStyle(
                                        color: ColorsUtils.white,
                                        fontSize: 38,
                                        fontWeight: FontWeight.w900)),
                                TextSpan(
                                    text: 'precio base',
                                    style: TextStyle(
                                        color: ColorsUtils.white,
                                        fontSize: 34)),
                              ]),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: 239,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.6,
                      decoration: const BoxDecoration(
                          color: ColorsUtils.blue3,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(150),
                              bottomLeft: Radius.circular(150))),
                    ),
                  ),
                  Column(
                    children: [
                      GetBuilder<SubastasLogic>(
                          id: 'subastas',
                          builder: (_) {
                            final subastas = _.subastasModel?.subastas;
                            return subastas != null
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10,
                                            left: web ? 50 : 20,
                                            right: web ? 50 : 20),
                                        child:  Text(
                                          'OPORTUNIDADES DESTACADAS',
                                          style: TextStyle(
                                              color: ColorsUtils.blue3,
                                              fontSize: web?35:25),
                                        ),
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 460,
                                        margin:
                                            EdgeInsets.only(top: web ? 30 : 10),
                                        child: subastas.isNotEmpty
                                            ? ListView.builder(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (__, index) =>
                                                    Destacado1(
                                                        subasta:
                                                            subastas[index],
                                                        voidCallback: () =>
                                                            _.toSubastaDetail(
                                                                subastas[index]
                                                                    .id)),
                                                itemCount: subastas.length,
                                              )
                                            : const NoDataWid(),
                                      ),
                                    ],
                                  )
                                : const LoadingWid();
                          }),
                      GetBuilder<SubastasLogic>(
                          id: 'subastas',
                          builder: (_) {
                            final subastas = _.subastasModel?.subastas;
                            return subastas != null
                                ? Container(
                                    width: size.width,
                                    height: 433,
                                    margin: EdgeInsets.only(top: web ? 30 : 10),
                                    child: subastas.isNotEmpty
                                        ? ListView.builder(
                                            padding: const EdgeInsets.all(0),
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (__, index) =>
                                                Destacado2(
                                                    subasta: subastas[index],
                                                    voidCallback: () =>
                                                        _.toSubastaDetail(
                                                            subastas[index]
                                                                .id)),
                                            itemCount: subastas.length,
                                          )
                                        : const NoDataWid())
                                : const LoadingWid();
                          }),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<SubastasLogic>(
                  id: 'subastas',
                  builder: (_) {
                    final subastas = _.subastasModel?.subastas;
                    return subastas != null
                        ? Column(
                            children: [
                              Container(
                                width: size.width,
                                margin: EdgeInsets.only(
                                    top: 10,
                                    left: web ? 50 : 20,
                                    right: web ? 50 : 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Text(
                                      'Osinergim Perú',
                                      style: TextStyle(
                                          color: ColorsUtils.blue3,
                                          fontSize: web?35:25),
                                    ),
                                    Text(
                                      'Ver todo',
                                      style: TextStyle(
                                          color: ColorsUtils.grey1,
                                          fontSize: web?28:18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: size.width,
                                  height: 440,
                                  margin: EdgeInsets.only(top: web ? 30 : 10),
                                  child: subastas.isNotEmpty
                                      ? ListView.builder(
                                          padding: const EdgeInsets.all(0),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (__, index) =>
                                              SubastaEmpresa(
                                                  subasta: subastas[index],
                                                  voidCallback: () =>
                                                      _.toSubastaDetail(
                                                          subastas[index].id)),
                                          itemCount: subastas.length,
                                        )
                                      : const NoDataWid()),
                            ],
                          )
                        : const LoadingWid();
                  }),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<SubastasLogic>(
                  id: 'subastas',
                  builder: (logic) {
                    final subastas = _.subastasModel?.subastas;
                    return subastas != null
                        ? Column(
                            children: [
                              Container(
                                width: size.width,
                                margin: EdgeInsets.only(
                                    top: 10,
                                    left: web ? 50 : 20,
                                    right: web ? 50 : 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                    Text(
                                      'Buenaventura',
                                      style: TextStyle(
                                          color: ColorsUtils.blue3,
                                          fontSize: web?35:25),
                                    ),
                                    Text(
                                      'Ver todo',
                                      style: TextStyle(
                                          color: ColorsUtils.grey1,
                                          fontSize: web?28:18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  width: size.width,
                                  height: 440,
                                  margin: EdgeInsets.only(top: web ? 30 : 10),
                                  child: subastas.isNotEmpty
                                      ? ListView.builder(
                                          padding: const EdgeInsets.all(0),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (__, index) =>
                                              SubastaEmpresa(
                                                  subasta: subastas[index],
                                                  voidCallback: () =>
                                                      _.toSubastaDetail(
                                                          subastas[index].id)),
                                          itemCount: subastas.length,
                                        )
                                      : const NoDataWid()),
                            ],
                          )
                        : const LoadingWid();
                  }),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                color: const Color(0xfff2f2f2),
                padding: EdgeInsets.all(web ? 50 : 20),
                child: Wrap(
                  alignment:
                      web ? WrapAlignment.spaceBetween : WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    OfertaNegociableWid(voidCallback: () => null),
                    const UltimaSubastaWid()
                  ],
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.all(web ? 50 : 20),
                child: Wrap(
                  alignment:
                      web ? WrapAlignment.spaceBetween : WrapAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    SizedBox(
                      width: web ? size.width * 0.4 : size.width,
                      child: Column(
                        crossAxisAlignment: web
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: web ? size.width * 0.4 : size.width,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: web
                                          ? size.width * 0.15
                                          : size.width * 0.45,
                                      child:  FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'Ofertas en vivo',
                                          style: TextStyle(
                                              fontSize: web?35:25,
                                              color: ColorsUtils.grey2,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    PriceWid(
                                        width: web
                                            ? size.width * 0.15
                                            : size.width * 0.4,
                                        price: 300.00)
                                  ])),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: web ? size.width * 0.4 : size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('VENDEDOR',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsUtils.grey2)),
                                Text('HNOS. ASOCIADOS',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsUtils.grey2,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: web ? size.width * 0.4 : size.width,
                            child: const FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO',
                                style: TextStyle(
                                    color: ColorsUtils.blue3,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: web ? size.width * 0.4 : size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: web
                                      ? size.width * 0.3
                                      : size.width * 0.65,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const ImageIcon(
                                            AssetImage(
                                                'assets/icons/calendario.png'),
                                            size: 36,
                                            color: ColorsUtils.blue3,
                                          ),
                                          SizedBox(width: web ? 5 : 1),
                                          SizedBox(
                                            width: web
                                                ? size.width * 0.2
                                                : size.width * 0.5,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: RichText(
                                                textAlign: TextAlign.start,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                text: const TextSpan(children: [
                                                  TextSpan(
                                                      text: 'Inicia\n',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: ColorsUtils
                                                              .blue3)),
                                                  TextSpan(
                                                    text:
                                                        'Miercoles 28 de Oct. |  8.00 PM',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            ColorsUtils.blue3,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Center(
                                        child: ButtonWid(
                                            width: web
                                                ? size.width * 0.2
                                                : size.width * 0.3,
                                            height: 54,
                                            color1: ColorsUtils.orange1,
                                            color2: ColorsUtils.orange2,
                                            textButt: 'Deseo participar',
                                            voidCallback: () => null),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: const [
                                          ImageIcon(
                                            AssetImage(
                                                'assets/icons/personas.png'),
                                            color: ColorsUtils.blue3,
                                            size: 15,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Mínimo 2 participantes',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: ColorsUtils.blue3),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Card1Wid(
                                    views: 465,
                                    width: web
                                        ? size.width * 0.1
                                        : size.width * 0.2)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: web ? size.width * 0.4 : size.width,
                      height: 400,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/volquete0.png'),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              const FooterWid()
            ],
          ),
        ),
        floatingActionButton: Container(
          width: web ? 96 : 48,
          height: web ? 96 : 48,
          decoration: const BoxDecoration(
              color: ColorsUtils.orange1, shape: BoxShape.circle),
          child: IconButton(
              iconSize: web ? 48 : 24,
              onPressed: () => null,
              icon: const ImageIcon(
                AssetImage('assets/icons/mensaje3.png'),
                color: ColorsUtils.white,
              )),
        ),
      );
    });
  }
}
