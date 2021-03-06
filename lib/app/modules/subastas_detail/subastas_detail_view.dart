import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/footer.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/modules/subastas_detail/widgets/card_info.dart';
import 'package:subastalo/app/modules/subastas_detail/widgets/card_name.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'subastas_detail_logic.dart';

class SubastasDetailPage extends StatelessWidget {
  const SubastasDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<SubastasDetailLogic>(
        id: 'subasta',
        builder: (_) {
          final subasta = _.subasta;
          return subasta != null
              ? Scaffold(
                  body: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: web
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                        Wrap(
                          children: [
                            CardNameSubDet(subasta: subasta),
                            CardInfoSubDet(subasta: subasta)
                          ],
                        ),
                        Wrap(
                          children: [
                            Container(
                              width: web ? size.width * 0.5 : size.width,
                              //height: web? 651:size.height*0.5,
                              height: size.height * 0.5,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(subasta.imagePrimary),
                                      fit: BoxFit.cover)),
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          right: 20,
                                          left: 20,
                                          bottom: 20,
                                          child: GetBuilder<
                                                  SubastasDetailLogic>(
                                              id: 'images',
                                              builder: (_) {
                                                final images = _.imagesSubasta;
                                                return SizedBox(
                                                  height: web? 100:50,
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    itemBuilder: (__, index) {
                                                      if (index ==
                                                          images.length) {
                                                        return Container(
                                                          width: web? 100:50,
                                                          height: web? 100:50,
                                                          decoration: BoxDecoration(
                                                              color: Colors.red,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        );
                                                      }
                                                      return Container(
                                                        width: web? 100:50,
                                                        height: web? 100:50,
                                                        margin: const EdgeInsets
                                                            .only(right: 20),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    images[index]
                                                                        .imageUrl),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      );
                                                    },
                                                    itemCount:
                                                        images.length + 1,
                                                  ),
                                                );
                                              }))
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: web ? size.width * 0.5 : size.width,
                              //height: web? 651:size.height*0.5,
                              height: size.height * 0.5,
                              child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CountdownTimer(
                                      endTime:
                                          DateTime.now().millisecondsSinceEpoch +
                                              100000 * 3000,
                                      widgetBuilder: (_, time) {
                                        if (time == null) {
                                          return const Text('Formato incorrecto');
                                        }
                                        return SizedBox(width: web?size.width*0.3:size.width*0.7,
                                          child: FittedBox(fit: BoxFit.scaleDown,
                                        child:Text(
                                            'Dias:  ${time.days}, horas:  ${time.hours}, minutos: ${time.min}, segundos:  ${time.sec} ',
                                            style: const TextStyle(
                                                fontSize: 20, fontWeight: FontWeight.bold),
                                          ),)
                                        );
                                      },
                                    ),
                                    Column(mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.live_tv,
                                          color: ColorsUtils.grey1.withOpacity(0.2),
                                          size: web? 94:24,
                                        ),

                                        SizedBox(width: web?size.width*0.3:size.width*0.7,
                                          child: FittedBox(fit: BoxFit.scaleDown,
                                            child: Text(
                                          subasta.type == 'Vivo'
                                              ? 'OFERTA EN VIVO'
                                              : 'OFERTA NEGOCIABLE',
                                          style: TextStyle(
                                              color:
                                                  ColorsUtils.grey1.withOpacity(0.2),
                                              fontSize: 14),
                                        ),)),
                                      ],
                                    ),
                                    ButtonWid(
                                        width: size.width * 0.3,
                                        height: web ? 70 : 40,
                                        color1: subasta.type == 'Vivo'
                                            ? ColorsUtils.orange1
                                            : ColorsUtils.blueButt1,
                                        color2: subasta.type == 'Vivo'
                                            ? ColorsUtils.orange2
                                            : ColorsUtils.blueButt2,
                                        textButt: subasta.type == 'Vivo'
                                            ? 'Deseo participar'
                                            : 'Quiero negociar',
                                        fontSize: 26,
                                        voidCallback: () => subasta.type == 'Vivo'
                                            ? _.subasEnVivo('123')
                                            : _.subastaNegociar('123')),
                                    SizedBox(width: web?size.width*0.3:size.width*0.7,
                                      child: FittedBox(fit: BoxFit.scaleDown,
                                        child:RichText(text: TextSpan(children: [
                                          WidgetSpan(child: Icon(
                                            Icons.home,
                                            size: 20,
                                            color: subasta.type == 'Vivo'
                                                ? ColorsUtils.blue3
                                                : ColorsUtils.grey1,
                                          ),),
                                          TextSpan(text:subasta.type == 'Vivo'
                                              ? 'M??nimo 2 participantes'
                                              : 'Comisi??n del 05% del valor final',
                                            style: const TextStyle(
                                                color: ColorsUtils.blue3,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),)
                                        ]),))),
                                    subasta.type == 'Vivo'
                                        ? Container(width: web?size.width*0.3:size.width*0.7,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 30),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                    color: ColorsUtils.orange2)),
                                            child: FittedBox(fit: BoxFit.scaleDown,
                                              child: RichText(
                                                text: const TextSpan(
                                                  children:  [
                                                    TextSpan(text:'0.5% DE COMISI??N\n',
                                                        style: TextStyle(
                                                            fontSize: 8,
                                                            color:
                                                                ColorsUtils.grey1)),
                                                    TextSpan(text:'US\$ 32400.00',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                ColorsUtils.orange2)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : const SizedBox(),
                                    subasta.type == 'Vivo'
                                        ?  SizedBox(width: web?size.width*0.3:size.width*0.7,
                                      child: const FittedBox(fit: BoxFit.scaleDown,
                                          child:Text('PRECIO DE RESERVA',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: ColorsUtils.grey1))))
                                        : const SizedBox(),
                                  ],
                                ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            SizedBox(
                              width: web ? size.width * 0.5 : size.width,
                              child: DefaultTabController(
                                  length: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TabBar(
                                          isScrollable: true,
                                          labelColor: ColorsUtils.blue3,
                                          labelPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10),
                                          unselectedLabelColor:
                                              Theme.of(context).hintColor,
                                          indicator: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: ColorsUtils.orange2,
                                                width: 4,
                                              ),
                                            ),
                                          ),
                                          tabs: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    width: 47,
                                                    height: 47,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: ColorsUtils
                                                                .orange2,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: const Icon(
                                                      Icons.settings,
                                                      color: ColorsUtils.white,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('INFORMACI??N',
                                                      style: TextStyle(
                                                          color:
                                                              ColorsUtils.blue3,
                                                          fontSize:
                                                              web ? 16 : 12)),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    width: 47,
                                                    height: 47,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: ColorsUtils
                                                                .orange2,
                                                            shape: BoxShape
                                                                .circle),
                                                    child: const Icon(
                                                      Icons.location_pin,
                                                      color: ColorsUtils.white,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('UBICACI??N',
                                                      style: TextStyle(
                                                          color:
                                                              ColorsUtils.blue3,
                                                          fontSize:
                                                              web ? 16 : 12)),
                                                ],
                                              ),
                                            ),
                                          ]),
                                      SizedBox(
                                        height: 600,
                                        child: TabBarView(children: [
                                          SingleChildScrollView(
                                            child: Container(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text('Descripci??n',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(subasta.description,
                                                      style: const TextStyle(
                                                        fontSize: 20,
                                                      )),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const Text('Ficha T??cnica',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    subasta.fileTecnique,
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Container(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text('Ubicaci??n',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const Text(
                                                      'Lima/SJM/Av. los incas 333 - Paradero 22',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      )),
                                                  const SizedBox(height: 50),
                                                  const Text('Visitas',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const Text(
                                                      'Disponible para visitas',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      )),
                                                  const SizedBox(height: 50),
                                                  const Text('Agendar visita',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20)),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const Text(
                                                      'Disponible para visitas',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                      )),
                                                  const SizedBox(height: 50),
                                                  const Text(
                                                      'Seleccione una fecha',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Container(
                                                    width: web
                                                        ? size.width * 0.25
                                                        : size.width * 0.5,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    5)),
                                                        border: Border.all(
                                                            color: ColorsUtils
                                                                .grey1
                                                                .withOpacity(
                                                                    0.5))),
                                                    child:
                                                        DropdownButton<String>(
                                                      underline: Container(
                                                        height: 0,
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      isExpanded: true,
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Text(
                                                                'Lunes 27 de Setiembre')),
                                                      ],
                                                      onChanged: (value) =>
                                                          null,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 50),
                                                  const Text(
                                                      'Seleccione una hora',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Container(
                                                    width: web
                                                        ? size.width * 0.25
                                                        : size.width * 0.5,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    5)),
                                                        border: Border.all(
                                                            color: ColorsUtils
                                                                .grey1
                                                                .withOpacity(
                                                                    0.5))),
                                                    child:
                                                        DropdownButton<String>(
                                                      underline: Container(
                                                        height: 0,
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      isExpanded: true,
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child:
                                                                Text('9:00')),
                                                      ],
                                                      onChanged: (value) =>
                                                          null,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ]),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: web ? size.width * 0.5 : size.width,
                              child: Column(
                                children: [
                                  Container(
                                    width: web ? size.width * 0.5 : size.width,
                                    color: const Color(0xffF6F6F6),
                                    height: 67,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        subasta.name,
                                        style: TextStyle(
                                            color: ColorsUtils.grey1,
                                            fontSize: web ? 24 : 12),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 474,
                                          height: 407,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(46),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      subasta.imagePrimary),
                                                  fit: BoxFit.cover)),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        ButtonWid(
                                            width: 383,
                                            height: 54,
                                            color1: ColorsUtils.grey1,
                                            color2: ColorsUtils.grey2,
                                            textButt: 'Descargar ficha t??cnica',
                                            voidCallback: () => null)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        //SizedBox(height: web ? 100 : 20),
                        FooterWid()
                      ])),
                )
              : const Scaffold(body: Center(child: LoadingWid()));
        });
  }
}
