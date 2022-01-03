import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'vivo_logic.dart';

class VivoPage extends StatelessWidget {
  final logic = Get.find<VivoLogic>();

  VivoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return web? SafeArea(
      bottom: false,
      right: false,
      left: false,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: size.width,
              //height: size.height * 0.1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.3,
                      0.5,
                      0.7
                    ],
                    colors: [
                      ColorsUtils.blueButt2,
                      ColorsUtils.blueButt1,
                      ColorsUtils.blueButt2
                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.2,
                    //height: size.height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.09,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: 'SUBASTA Nº\n',
                                  style: TextStyle(
                                      fontSize: 16, color: ColorsUtils.white)),
                              TextSpan(
                                  text: '(34556)',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorsUtils.white,
                                      fontWeight: FontWeight.bold))
                            ])),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.09,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                                text: const TextSpan(children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.signal_cellular_alt,
                                  color: ColorsUtils.green,
                                  size: 32,
                                ),
                              ),
                              TextSpan(
                                  text: '\nNIVEL DE\n',
                                  style: TextStyle(
                                      fontSize: 16, color: ColorsUtils.white)),
                              TextSpan(
                                  text: 'CONECTIVIDAD',
                                  style: TextStyle(
                                      fontSize: 16, color: ColorsUtils.white))
                            ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.5,
                    //height: size.height * 0.1,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorsUtils.grey1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.15,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.person,
                                    color: ColorsUtils.white,
                                    size: 18,
                                  ),
                                ),
                                TextSpan(
                                    text: '\nTU ALIAS\n',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsUtils.white)),
                                TextSpan(
                                    text: '(GUILLE02)',
                                    style: TextStyle(
                                        fontSize: 18, color: ColorsUtils.white))
                              ]),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.15,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                                text: const TextSpan(children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  color: ColorsUtils.white,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                  text: '\nTUS PROPUESTAS\n',
                                  style: TextStyle(
                                      fontSize: 18, color: ColorsUtils.white)),
                              TextSpan(
                                  text: '(0)',
                                  style: TextStyle(
                                      fontSize: 18, color: ColorsUtils.white))
                            ])),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.15,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                                text: const TextSpan(children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.person,
                                  color: ColorsUtils.white,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                  text: '\nTUS FONDOS\n',
                                  style: TextStyle(
                                      fontSize: 18, color: ColorsUtils.white)),
                              TextSpan(
                                  text: '(\$150)',
                                  style: TextStyle(
                                      fontSize: 18, color: ColorsUtils.white))
                            ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.9 - 9.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.05,
                        padding: EdgeInsets.symmetric(horizontal: web ? 10 : 5),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO',
                            style: TextStyle(
                                fontSize: 30,
                                color: ColorsUtils.blue3,
                                fontWeight: FontWeight.w900),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.5,
                        height: size.height * 0.65,
                        child: Stack(
                          children: [
                            Container(
                              width: size.width * 0.5,
                              height: size.height * 0.65,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/volquete.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              right: 0,
                              left: 0,
                              bottom: 10,
                              child: SizedBox(
                                height: size.height * 0.1,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.all(0),
                                  itemBuilder: (__, index) {
                                    if (index == 0) {
                                      return Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        width: size.height * 0.1,
                                        height: size.height * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      );
                                    }
                                    return Container(
                                      width: size.height * 0.1,
                                      height: size.height * 0.1,
                                      margin: const EdgeInsets.only(left: 20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/volquete0.png'),
                                              fit: BoxFit.cover)),
                                    );
                                  },
                                  itemCount: 10 + 1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xffF2F2F2)),
                        padding: const EdgeInsets.all(5),
                        width: size.width * 0.5,
                        height: size.height * 0.1 - 4.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: size.width * 0.2,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.02,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'CONECTADOS',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: ColorsUtils.grey2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.05,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
                                          textAlign: TextAlign.center,
                                          text: const TextSpan(children: [
                                            WidgetSpan(
                                                child: Icon(
                                              Icons.person_outline,
                                              color: ColorsUtils.blue3,
                                              size: 40,
                                            )),
                                            TextSpan(
                                                text: '6',
                                                style: TextStyle(
                                                    fontSize: 40,
                                                    color: ColorsUtils.blue3,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ])),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.22,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.02,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'PROPUESTAS',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: ColorsUtils.grey2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.22,
                                    height: size.height * 0.05,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
                                          textAlign: TextAlign.center,
                                          text: const TextSpan(children: [
                                            WidgetSpan(
                                                child: Icon(
                                              Icons.person_outline,
                                              color: ColorsUtils.blue3,
                                              size: 40,
                                            )),
                                            TextSpan(
                                                text: '1',
                                                style: TextStyle(
                                                    fontSize: 40,
                                                    color: ColorsUtils.blue3,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ])),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:
                            const BoxDecoration(color: Color(0xff2B2D2F)),
                        padding: const EdgeInsets.all(5),
                        width: size.width * 0.5,
                        height: size.height * 0.1 - 4.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: size.width * 0.22,
                              height: size.height * 0.03,
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('Precio base:',
                                    style: TextStyle(
                                        fontSize: 31,
                                        color: ColorsUtils.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              width: size.width * 0.22,
                              height: size.height * 0.07,
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorsUtils.grey1),
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.all(2.5),
                              child: const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('3,500',
                                    style: TextStyle(
                                        fontSize: 55,
                                        color: ColorsUtils.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GetBuilder<VivoLogic>(
                    id: 'chat',
                    builder: (logic) {
                      return SizedBox(
                        width: size.width * 0.5,
                        height: size.height * 0.9 - 9.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.5,
                              height: size.height * 0.05,
                              padding: EdgeInsets.symmetric(
                                  horizontal: web ? 10 : 5),
                              color: ColorsUtils.orange2,
                              child: SizedBox(
                                width: size.width * 0.4,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: RichText(
                                      text: const TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.person,
                                        color: ColorsUtils.white,
                                        size: 48,
                                      ),
                                    ),
                                    TextSpan(
                                        text: ' Propuesta actual: ',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: ColorsUtils.white)),
                                    TextSpan(
                                      text: ' US\$ 3,550',
                                      style: TextStyle(
                                          color: ColorsUtils.white,
                                          fontSize: 55,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ])),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.5,
                              color: ColorsUtils.blue3,
                              height: size.height * 0.65,
                              child: Column(
                                children: [
                                  !logic.chatView
                                      ? const SizedBox()
                                      : Container(
                                          width: size.width * 0.5,
                                          color: ColorsUtils.white,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Obx(() => FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: RichText(
                                                  text: TextSpan(children: [
                                                    const WidgetSpan(
                                                        child: Icon(
                                                      Icons.lock_clock,
                                                      size: 26,
                                                    )),
                                                    const TextSpan(
                                                        text: ' Inicio hace ',
                                                        style: TextStyle(
                                                            fontSize: 26,
                                                            color: ColorsUtils
                                                                .blue3)),
                                                    TextSpan(
                                                        text:
                                                            '00:00:${logic.start}',
                                                        style: const TextStyle(
                                                            fontSize: 26,
                                                            color: ColorsUtils
                                                                .blue3,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))
                                                  ]),
                                                ),
                                              ))),
                                  !logic.chatView
                                      ? Expanded(
                                          child: Container(
                                            padding:
                                                EdgeInsets.all(web ? 50 : 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                SizedBox(
                                                  width: size.width * 0.5,
                                                  height: size.height * 0.05,
                                                  child: const FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      '¡Bienvenido al proceso en vivo!',
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          color: ColorsUtils
                                                              .white),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.5,
                                                  height: size.height * 0.05,
                                                  child: const FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      'Recibiendo\nparticipantes',
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          color:
                                                              ColorsUtils.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.stream,
                                                  size: size.height * 0.05,
                                                  color: ColorsUtils.white,
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.5,
                                                  height: size.height * 0.05,
                                                  child: const FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      'Inicia en:',
                                                      style: TextStyle(
                                                          fontSize: 30,
                                                          color: ColorsUtils
                                                              .white),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: ColorsUtils
                                                                .orange2,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: Icon(
                                                      Icons.lock_clock,
                                                      size: size.height * 0.05,
                                                      color: ColorsUtils.white,
                                                    )),
                                                Obx(() => SizedBox(
                                                      width: size.width * 0.5,
                                                      height:
                                                          size.height * 0.05,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          '00:00:${logic.end}',
                                                          style: const TextStyle(
                                                              fontSize: 38,
                                                              color: ColorsUtils
                                                                  .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        )
                                      : Expanded(
                                          child: ListView(
                                          reverse: true,
                                          padding: const EdgeInsets.all(10),
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              padding:
                                                  EdgeInsets.all(web ? 10 : 5),
                                              decoration: BoxDecoration(
                                                  color: ColorsUtils.white
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            ColorsUtils.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Image.asset(
                                                      'assets/icons/logo0.png',
                                                      width: web ? 20 : 10,
                                                      height: web ? 20 : 10,
                                                    ),
                                                  ),
                                                  SizedBox(width: web ? 10 : 5),
                                                  SizedBox(
                                                    width: size.width * 0.27,
                                                    child: const Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                            'Se lo llevan por US\$ 3,550 Se lo llevan por US\$ 3,550 Se lo llevan por US\$ 3,550',
                                                            style: TextStyle(
                                                                color:
                                                                    ColorsUtils
                                                                        .white)),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              padding:
                                                  EdgeInsets.all(web ? 10 : 5),
                                              decoration: BoxDecoration(
                                                  color: ColorsUtils.orange2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            ColorsUtils.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Image.asset(
                                                      'assets/icons/logo0.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  SizedBox(
                                                      width: size.width * 0.27,
                                                      child: const Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: FittedBox(
                                                              fit: BoxFit
                                                                  .scaleDown,
                                                              child: Text(
                                                                  '¡A la una!',
                                                                  style: TextStyle(
                                                                      color: ColorsUtils
                                                                          .white)))))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              padding:
                                                  EdgeInsets.all(web ? 10 : 5),
                                              decoration: BoxDecoration(
                                                  color: ColorsUtils.white
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            ColorsUtils.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Image.asset(
                                                      'assets/icons/logo0.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  SizedBox(
                                                      width: size.width * 0.27,
                                                      child: const Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: FittedBox(
                                                            fit: BoxFit
                                                                .scaleDown,
                                                            child: Text(
                                                                'Se lo llevan por US\$ 3,600',
                                                                style: TextStyle(
                                                                    color: ColorsUtils
                                                                        .white)),
                                                          )))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              padding:
                                                  EdgeInsets.all(web ? 10 : 5),
                                              decoration: BoxDecoration(
                                                  color: ColorsUtils.white
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color:
                                                            ColorsUtils.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Image.asset(
                                                      'assets/icons/logo0.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  SizedBox(
                                                      width: size.width * 0.27,
                                                      child: const Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: FittedBox(
                                                            fit: BoxFit
                                                                .scaleDown,
                                                            child: Text(
                                                              '¡Ya puedes enviar tus propuestas!',
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorsUtils
                                                                          .white),
                                                              maxLines: 5,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          )))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  Container(
                                    height: web
                                        ? size.height * 0.1
                                        : size.height * 0.05,
                                    color: !logic.chatView
                                        ? const Color(0xff2B2D2F)
                                        : ColorsUtils.orange2,
                                    padding: EdgeInsets.symmetric(
                                        vertical: web ? 10 : 5),
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Container(
                                              width: size.width * 0.5,
                                              height: 1,
                                              color: ColorsUtils.white),
                                        ),
                                        Positioned(
                                          top: 0,
                                          bottom: 0,
                                          right: 0,
                                          left: 0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: (size.height * 0.06),
                                                height: (size.height * 0.06),
                                                padding:
                                                    const EdgeInsets.all(2.5),
                                                decoration: BoxDecoration(
                                                    color: !logic.chatView
                                                        ? const Color(
                                                            0xff2B2D2F)
                                                        : ColorsUtils.orange2,
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.white),
                                                    shape: BoxShape.circle),
                                                child: const Center(
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                          fontSize: 40,
                                                          color: ColorsUtils
                                                              .white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: (size.height * 0.06),
                                                height: (size.height * 0.06),
                                                padding:
                                                    const EdgeInsets.all(2.5),
                                                decoration: BoxDecoration(
                                                    color: !logic.chatView
                                                        ? const Color(
                                                            0xff2B2D2F)
                                                        : ColorsUtils.orange2,
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.white),
                                                    shape: BoxShape.circle),
                                                child: const Center(
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      '2',
                                                      style: TextStyle(
                                                          fontSize: 40,
                                                          color: ColorsUtils
                                                              .white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: (size.height * 0.06),
                                                height: (size.height * 0.06),
                                                padding:
                                                    const EdgeInsets.all(2.5),
                                                decoration: BoxDecoration(
                                                    color: !logic.chatView
                                                        ? const Color(
                                                            0xff2B2D2F)
                                                        : ColorsUtils.orange2,
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.white),
                                                    shape: BoxShape.circle),
                                                child: const Center(
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      '3',
                                                      style: TextStyle(
                                                          fontSize: 40,
                                                          color: ColorsUtils
                                                              .white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            !logic.chatView
                                ? SizedBox(
                                    height: size.height * 0.2 - 9.5,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 5),
                                        Center(
                                          child: SizedBox(
                                            width: size.width * 0.5,
                                            height: (size.height * 0.05) - 5,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Container(
                                                      width: size.width * 0.5,
                                                      height: 2,
                                                      color: ColorsUtils.grey1),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Container(
                                                      width:
                                                          (size.height * 0.04),
                                                      height:
                                                          (size.height * 0.04),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.5),
                                                      decoration:
                                                          const BoxDecoration(
                                                              color: ColorsUtils
                                                                  .grey1,
                                                              shape: BoxShape
                                                                  .circle),
                                                      child: const Center(
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            '1',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color:
                                                                    ColorsUtils
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          (size.height * 0.04),
                                                      height:
                                                          (size.height * 0.04),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.5),
                                                      decoration:
                                                          const BoxDecoration(
                                                              color: ColorsUtils
                                                                  .grey1,
                                                              shape: BoxShape
                                                                  .circle),
                                                      child: const Center(
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            '2',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color:
                                                                    ColorsUtils
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          (size.height * 0.04),
                                                      height:
                                                          (size.height * 0.04),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.5),
                                                      decoration:
                                                          const BoxDecoration(
                                                              color: ColorsUtils
                                                                  .grey1,
                                                              shape: BoxShape
                                                                  .circle),
                                                      child: const Center(
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            '3',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color:
                                                                    ColorsUtils
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        SizedBox(
                                          width: size.width * 0.5,
                                          height: (size.height * 0.05) - 5,
                                          child: const Center(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                'Utiliza la barra de puntos como guía\npara enviar '
                                                'tus propuestas a tiempo.',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: ColorsUtils.grey1),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                : SizedBox(
                                    width: size.width * 0.5,
                                    height: size.height * 0.2 - 9.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.5,
                                          child: Center(
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: ColorsUtils
                                                              .grey2))),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Text('INCREMENTO',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  const SizedBox(width: 5),
                                                  SizedBox(
                                                    width: 15,
                                                    height: 15,
                                                    child: Image.asset(
                                                      'assets/icons/dado.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        ButtonWid(
                                            width: web
                                                ? size.width * 0.15
                                                : size.width * 0.3,
                                            height: 45,
                                            color1: ColorsUtils.orange1,
                                            color2: ColorsUtils.orange2,
                                            textButt: 'US\$ 3,600',
                                            fontSize: 30,
                                            voidCallback: () => null),
                                        SizedBox(
                                            width: size.width * 0.5,
                                            child: const Center(
                                                child: Text(
                                                    'Incremento de + \$ 50')))
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    ):
    SafeArea(
        bottom: false,
        right: false,
        left: false,
        child:  GetBuilder<VivoLogic>(
            id: 'chat',
            builder: (logic) {
              return SizedBox(
                width: size.width,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width ,
                      height: size.height * 0.05,
                      padding: EdgeInsets.symmetric(
                          horizontal: web ? 10 : 5),
                      color: ColorsUtils.orange2,
                      child: SizedBox(
                        width: size.width,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RichText(
                              text: const TextSpan(children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.person,
                                    color: ColorsUtils.white,
                                    size: 48,
                                  ),
                                ),
                                TextSpan(
                                    text: ' Propuesta actual: ',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: ColorsUtils.white)),
                                TextSpan(
                                  text: ' US\$ 3,550',
                                  style: TextStyle(
                                      color: ColorsUtils.white,
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold),
                                ),
                              ])),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: Stack(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height *0.3,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/volquete.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: 10,
                            child: SizedBox(
                              height: size.height * 0.05,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(0),
                                itemBuilder: (__, index) {
                                  if (index == 0) {
                                    return Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      width: size.height * 0.05,
                                      height: size.height * 0.05,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                    );
                                  }
                                  return Container(
                                    width: size.height * 0.05,
                                    height: size.height * 0.05,
                                    margin: const EdgeInsets.only(left: 20),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(5),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/volquete0.png'),
                                            fit: BoxFit.cover)),
                                  );
                                },
                                itemCount: 10 + 1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      color: ColorsUtils.blue3,
                      height: size.height * 0.4,
                      child: Column(
                        children: [
                          !logic.chatView
                              ? const SizedBox()
                              : Container(
                              width: size.width,
                              color: ColorsUtils.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              child: Obx(() => FittedBox(
                                fit: BoxFit.scaleDown,
                                child: RichText(
                                  text: TextSpan(children: [
                                    const WidgetSpan(
                                        child: Icon(
                                          Icons.lock_clock,
                                          size: 26,
                                        )),
                                    const TextSpan(
                                        text: ' Inicio hace ',
                                        style: TextStyle(
                                            fontSize: 26,
                                            color: ColorsUtils
                                                .blue3)),
                                    TextSpan(
                                        text:
                                        '00:00:${logic.start}',
                                        style: const TextStyle(
                                            fontSize: 26,
                                            color: ColorsUtils
                                                .blue3,
                                            fontWeight:
                                            FontWeight
                                                .bold))
                                  ]),
                                ),
                              ))),
                          !logic.chatView
                              ? Expanded(
                            child: Container(
                              padding:
                              EdgeInsets.all(web ? 50 : 20),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: size.width,
                                    height: size.height * 0.05,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        '¡Bienvenido al proceso en vivo!',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: ColorsUtils
                                                .white),
                                        textAlign:
                                        TextAlign.center,
                                        maxLines: 2,
                                        overflow:
                                        TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width,
                                    height: size.height * 0.05,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Recibiendo\nparticipantes',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color:
                                            ColorsUtils.white,
                                            fontWeight:
                                            FontWeight.bold),
                                        textAlign:
                                        TextAlign.center,
                                        maxLines: 2,
                                        overflow:
                                        TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.stream,
                                    size: size.height * 0.05,
                                    color: ColorsUtils.white,
                                  ),
                                  SizedBox(
                                    width: size.width,
                                    height: size.height * 0.05,
                                    child: const FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Inicia en:',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: ColorsUtils
                                                .white),
                                        textAlign:
                                        TextAlign.center,
                                        maxLines: 1,
                                        overflow:
                                        TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      padding:
                                      const EdgeInsets.all(5),
                                      decoration:
                                      const BoxDecoration(
                                          color: ColorsUtils
                                              .orange2,
                                          shape: BoxShape
                                              .circle),
                                      child: Icon(
                                        Icons.lock_clock,
                                        size: size.height * 0.05,
                                        color: ColorsUtils.white,
                                      )),
                                  Obx(() => SizedBox(
                                    width: size.width,
                                    height:
                                    size.height * 0.05,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        '00:00:${logic.end}',
                                        style: const TextStyle(
                                            fontSize: 38,
                                            color: ColorsUtils
                                                .white,
                                            fontWeight:
                                            FontWeight
                                                .bold),
                                        textAlign:
                                        TextAlign.center,
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          )
                              : Expanded(
                              child: ListView(
                                reverse: true,
                                padding: const EdgeInsets.all(10),
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10),
                                    padding:
                                    EdgeInsets.all(web ? 10 : 5),
                                    decoration: BoxDecoration(
                                        color: ColorsUtils.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            100)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                              ColorsUtils.white,
                                              borderRadius:
                                              BorderRadius
                                                  .circular(20)),
                                          child: Image.asset(
                                            'assets/icons/logo0.png',
                                            width: web ? 20 : 10,
                                            height: web ? 20 : 10,
                                          ),
                                        ),
                                        SizedBox(width: web ? 10 : 5),
                                        SizedBox(
                                          width: size.width * 0.5,
                                          child: const Align(
                                            alignment:
                                            Alignment.centerLeft,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                  'Se lo llevan por US\$ 3,550 Se lo llevan por US\$ 3,550 Se lo llevan por US\$ 3,550',
                                                  style: TextStyle(
                                                      color:
                                                      ColorsUtils
                                                          .white)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10),
                                    padding:
                                    EdgeInsets.all(web ? 10 : 5),
                                    decoration: BoxDecoration(
                                        color: ColorsUtils.orange2,
                                        borderRadius:
                                        BorderRadius.circular(
                                            100)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                              ColorsUtils.white,
                                              borderRadius:
                                              BorderRadius
                                                  .circular(20)),
                                          child: Image.asset(
                                            'assets/icons/logo0.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: size.width * 0.5,
                                            child: const Align(
                                                alignment: Alignment
                                                    .centerLeft,
                                                child: FittedBox(
                                                    fit: BoxFit
                                                        .scaleDown,
                                                    child: Text(
                                                        '¡A la una!',
                                                        style: TextStyle(
                                                            color: ColorsUtils
                                                                .white)))))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10),
                                    padding:
                                    EdgeInsets.all(web ? 10 : 5),
                                    decoration: BoxDecoration(
                                        color: ColorsUtils.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            100)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                              ColorsUtils.white,
                                              borderRadius:
                                              BorderRadius
                                                  .circular(20)),
                                          child: Image.asset(
                                            'assets/icons/logo0.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: size.width * 0.5,
                                            child: const Align(
                                                alignment: Alignment
                                                    .centerLeft,
                                                child: FittedBox(
                                                  fit: BoxFit
                                                      .scaleDown,
                                                  child: Text(
                                                      'Se lo llevan por US\$ 3,600',
                                                      style: TextStyle(
                                                          color: ColorsUtils
                                                              .white)),
                                                )))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10),
                                    padding:
                                    EdgeInsets.all(web ? 10 : 5),
                                    decoration: BoxDecoration(
                                        color: ColorsUtils.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(
                                            100)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                              ColorsUtils.white,
                                              borderRadius:
                                              BorderRadius
                                                  .circular(20)),
                                          child: Image.asset(
                                            'assets/icons/logo0.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: size.width * 0.5,
                                            child: const Align(
                                                alignment: Alignment
                                                    .centerLeft,
                                                child: FittedBox(
                                                  fit: BoxFit
                                                      .scaleDown,
                                                  child: Text(
                                                    '¡Ya puedes enviar tus propuestas!',
                                                    style: TextStyle(
                                                        color:
                                                        ColorsUtils
                                                            .white),
                                                    maxLines: 5,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                  ),
                                                )))
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            height: web
                                ? size.height * 0.1
                                : size.height * 0.05,
                            color: !logic.chatView
                                ? const Color(0xff2B2D2F)
                                : ColorsUtils.orange2,
                            padding: EdgeInsets.symmetric(
                                vertical: web ? 10 : 5),
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                      width: size.width,
                                      height: 1,
                                      color: ColorsUtils.white),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding:
                                        const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            color: !logic.chatView
                                                ? const Color(
                                                0xff2B2D2F)
                                                : ColorsUtils.orange2,
                                            border: Border.all(
                                                color:
                                                ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  color: ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding:
                                        const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            color: !logic.chatView
                                                ? const Color(
                                                0xff2B2D2F)
                                                : ColorsUtils.orange2,
                                            border: Border.all(
                                                color:
                                                ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  color: ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: (size.height * 0.06),
                                        height: (size.height * 0.06),
                                        padding:
                                        const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                            color: !logic.chatView
                                                ? const Color(
                                                0xff2B2D2F)
                                                : ColorsUtils.orange2,
                                            border: Border.all(
                                                color:
                                                ColorsUtils.white),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  color: ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    !logic.chatView
                        ? SizedBox(
                      height: size.height * 0.2,
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Center(
                            child: SizedBox(
                              width: size.width,
                              height: (size.height * 0.05) - 5,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                        width: size.width,
                                        height: 2,
                                        color: ColorsUtils.grey1),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceAround,
                                    children: [
                                      Container(
                                        width:
                                        (size.height * 0.04),
                                        height:
                                        (size.height * 0.04),
                                        padding:
                                        const EdgeInsets.all(
                                            2.5),
                                        decoration:
                                        const BoxDecoration(
                                            color: ColorsUtils
                                                .grey1,
                                            shape: BoxShape
                                                .circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color:
                                                  ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                        (size.height * 0.04),
                                        height:
                                        (size.height * 0.04),
                                        padding:
                                        const EdgeInsets.all(
                                            2.5),
                                        decoration:
                                        const BoxDecoration(
                                            color: ColorsUtils
                                                .grey1,
                                            shape: BoxShape
                                                .circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color:
                                                  ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                        (size.height * 0.04),
                                        height:
                                        (size.height * 0.04),
                                        padding:
                                        const EdgeInsets.all(
                                            2.5),
                                        decoration:
                                        const BoxDecoration(
                                            color: ColorsUtils
                                                .grey1,
                                            shape: BoxShape
                                                .circle),
                                        child: const Center(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color:
                                                  ColorsUtils
                                                      .white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: size.width,
                            height: (size.height * 0.05) - 5,
                            child: const Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Utiliza la barra de puntos como guía\npara enviar '
                                      'tus propuestas a tiempo.',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorsUtils.grey1),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                        : SizedBox(
                      width: size.width,
                      height: size.height * 0.25,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [

                          ButtonWid(
                              width:
                                  size.width * 0.5,
                              height: 40,
                              color1: ColorsUtils.orange1,
                              color2: ColorsUtils.orange2,
                              textButt: 'US\$ 3,600',
                              fontSize: 30,
                              voidCallback: () => null),
                          SizedBox(
                              width: size.width * 0.5,
                              child: const Center(
                                  child: Text(
                                      'Incremento de + \$ 50'))),
                          Container(
                            decoration:
                            const BoxDecoration(color: Color(0xffF2F2F2)),
                            padding: const EdgeInsets.all(5),
                            width: size.width * 0.5,
                            height: size.height * 0.1 - 4.75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: size.width * 0.2,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.22,
                                        height: size.height * 0.02,
                                        child: const FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'CONECTADOS',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: ColorsUtils.grey2),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.22,
                                        height: size.height * 0.05,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: RichText(
                                              textAlign: TextAlign.center,
                                              text: const TextSpan(children: [
                                                WidgetSpan(
                                                    child: Icon(
                                                      Icons.person_outline,
                                                      color: ColorsUtils.blue3,
                                                      size: 40,
                                                    )),
                                                TextSpan(
                                                    text: '6',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color: ColorsUtils.blue3,
                                                        fontWeight:
                                                        FontWeight.bold))
                                              ])),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.22,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.22,
                                        height: size.height * 0.02,
                                        child: const FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            'PROPUESTAS',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: ColorsUtils.grey2),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.22,
                                        height: size.height * 0.05,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: RichText(
                                              textAlign: TextAlign.center,
                                              text: const TextSpan(children: [
                                                WidgetSpan(
                                                    child: Icon(
                                                      Icons.person_outline,
                                                      color: ColorsUtils.blue3,
                                                      size: 40,
                                                    )),
                                                TextSpan(
                                                    text: '1',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color: ColorsUtils.blue3,
                                                        fontWeight:
                                                        FontWeight.bold))
                                              ])),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),);
  }
}
