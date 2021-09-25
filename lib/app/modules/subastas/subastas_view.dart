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
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: 680,
              child: Stack(
                children: [
                  Container(
                    height: 616,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/bgSlider.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      right: 0, child: Image.asset('assets/images/autos.png')),
                  Container(
                    height: 616,
                    margin: EdgeInsets.only(left: web ? 50 : 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('PROXIMA SUBASTA',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 26)),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: const TextSpan(children: [
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
                          ]),
                        ),
                        const SizedBox(height: 30),
                        Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text('28',
                                style: TextStyle(
                                    color: ColorsUtils.white,
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(width: 15),
                            RichText(
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
                            const SizedBox(width: 15),
                            web
                                ? Container(
                                    width: 3,
                                    height: 60,
                                    color: ColorsUtils.white)
                                : const Divider(
                                    color: ColorsUtils.white,
                                  ),
                            const SizedBox(width: 15),
                            RichText(
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
                          ],
                        ),
                        const SizedBox(height: 30),
                        ButtonWid(
                            width: 250,
                            height: 50,
                            color1: ColorsUtils.orange1,
                            color2: ColorsUtils.orange2,
                            textButt: 'Deseo participar',
                            voidCallback: () => null)
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 150,
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, right: 40, left: 20),
                      decoration: BoxDecoration(
                          color: ColorsUtils.orange1.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('US \$15,000',
                              style: TextStyle(
                                  color: ColorsUtils.white, fontSize: 38)),
                          SizedBox(height: 10),
                          Text('precio base',
                              style: TextStyle(
                                  color: ColorsUtils.white, fontSize: 34)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: web ? 100 : 20,
                      child: Container(
                        width: 128,
                        height: 128,
                        decoration: const BoxDecoration(
                            color: ColorsUtils.orange1, shape: BoxShape.circle),
                        child: IconButton(
                            iconSize: 65,
                            onPressed: () => null,
                            icon: const ImageIcon(
                              AssetImage('assets/icons/mensaje.png'),
                              color: ColorsUtils.white,
                            )),
                      ))
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: 239,
                  child: Container(
                    width: size.width,
                    height: size.height*0.6,
                    decoration:const BoxDecoration(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 10,
                                          left: web ? 50 : 20,
                                          right: web ? 50 : 20),
                                      child: const Text(
                                        'OPORTUNIDADES DESTACADAS',
                                        style: TextStyle(
                                            color: ColorsUtils.blue3,
                                            fontSize: 35),
                                      ),
                                    ),
                                    Container(
                                      width: size.width,
                                      height: 460,
                                      margin: EdgeInsets.only(
                                          top: web ? 30 : 10),
                                      child: subastas.isNotEmpty
                                          ? ListView.builder(
                                              padding: const EdgeInsets.all(0),
                                              scrollDirection: Axis.horizontal,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              itemBuilder: (__, index) =>
                                                  Destacado1(
                                                      subasta: subastas[index],
                                                      voidCallback: () =>
                                                          _.toSubastaDetail(
                                                              subastas[index])),
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
                                  margin: EdgeInsets.only(
                                      top: web ? 30 : 10),
                                  child: subastas.isNotEmpty
                                      ? ListView.builder(
                                          padding: const EdgeInsets.all(0),
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemBuilder: (__, index) =>
                                              Destacado2(
                                                  subasta: subastas[index],
                                                  voidCallback: () =>
                                                      _.toSubastaDetail(
                                                          subastas[index])),
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
                              margin: EdgeInsets.only(
                                  top: 10,
                                  left: web ? 50 : 20,
                                  right: web ? 50 : 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Osinergim Perú',
                                    style: TextStyle(
                                        color: ColorsUtils.blue3, fontSize: 35),
                                  ),
                                  Text(
                                    'Ver todo',
                                    style: TextStyle(
                                        color: ColorsUtils.grey1, fontSize: 28),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: size.width,
                                height: 440,
                                margin: EdgeInsets.only(
                                    top: web ? 30 : 10),
                                child: subastas.isNotEmpty
                                    ? ListView.builder(
                                        padding: const EdgeInsets.all(0),
                                        scrollDirection: Axis.horizontal,
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder: (__, index) =>
                                            SubastaEmpresa(
                                                subasta: subastas[index],
                                                voidCallback: () =>
                                                    _.toSubastaDetail(
                                                        subastas[index])),
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
                              margin: EdgeInsets.only(
                                  top: 10,
                                  left: web ? 50 : 20,
                                  right: web ? 50 : 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Buenaventura',
                                    style: TextStyle(
                                        color: ColorsUtils.blue3, fontSize: 35),
                                  ),
                                  Text(
                                    'Ver todo',
                                    style: TextStyle(
                                        color: ColorsUtils.grey1, fontSize: 28),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: size.width,
                                height: 440,
                                margin: EdgeInsets.only(
                                    top: web ? 30 : 10),
                                child: subastas.isNotEmpty
                                    ? ListView.builder(
                                        padding: const EdgeInsets.all(0),
                                        scrollDirection: Axis.horizontal,
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder: (__, index) =>
                                            SubastaEmpresa(
                                                subasta: subastas[index],
                                                voidCallback: () =>
                                                    _.toSubastaDetail(
                                                        subastas[index])),
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
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
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
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                    width: web ? size.width * 0.5 : size.width,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.end,
                      children: [
                        SizedBox(
                          width: web ? size.width * 0.3 : size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: web ? size.width * 0.3 : size.width,
                                  child: Wrap(
                                      runAlignment: WrapAlignment.spaceBetween,
                                      alignment: WrapAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'Ofertas en vivo',
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: ColorsUtils.grey2,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        PriceWid(price: 300.00)
                                      ])),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: web ? size.width * 0.3 : size.width,
                                child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
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
                              const Text(
                                'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO',
                                style: TextStyle(
                                    color: ColorsUtils.blue3,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage('assets/icons/calendario.png'),
                                    size: 36,
                                    color: ColorsUtils.blue3,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('Inicia',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorsUtils.blue3)),
                                      Text('Miercoles 28 de Oct. |  8.00 PM',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorsUtils.blue3,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              ButtonWid(
                                  width: 383,
                                  height: 54,
                                  color1: ColorsUtils.orange1,
                                  color2: ColorsUtils.orange2,
                                  textButt: 'Deseo participar',
                                  voidCallback: () => null),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  ImageIcon(
                                    AssetImage('assets/icons/personas.png'),
                                    color: ColorsUtils.blue3,
                                    size: 15,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Mínimo 2 participantes',
                                    style: TextStyle(
                                        fontSize: 13, color: ColorsUtils.blue3),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Card1Wid(views: 465)
                      ],
                    ),
                  ),
                  Container(
                    width: 600,
                    height: 400,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/volquete0.png'))),
                  )
                ],
              ),
            ),
            const FooterWid()
          ],
        ),
      ));
    });
  }
}
