import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
                      physics: const BouncingScrollPhysics(),
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
                                  height: 651,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(subasta.imagePrimary),
                                          fit: BoxFit.cover)),
                                  child: Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              right: 20,
                                              left: 20,
                                              bottom: 20,
                                              child:
                                                  GetBuilder<
                                                          SubastasDetailLogic>(
                                                      id: 'images',
                                                      builder: (_) {
                                                        final images =
                                                            _.imagesSubasta;
                                                        return SizedBox(
                                                          height: 100,
                                                          child:
                                                              ListView.builder(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0),
                                                            physics:
                                                                const BouncingScrollPhysics(),
                                                            itemBuilder:
                                                                (__, index) {
                                                              if (index ==
                                                                  images
                                                                      .length) {
                                                                return Container(
                                                                  width: 100,
                                                                  height: 100,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .red,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                );
                                                              }
                                                              return Container(
                                                                width: 100,
                                                                height: 100,
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            20),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    image: DecorationImage(
                                                                        image: AssetImage(images[index]
                                                                            .imageUrl),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                              );
                                                            },
                                                            itemCount:
                                                                images.length +
                                                                    1,
                                                          ),
                                                        );
                                                      }))
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  width: web ? size.width * 0.5 : size.width,
                                  height: 651,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.live_tv,
                                        color:
                                            ColorsUtils.grey1.withOpacity(0.2),
                                        size: 94,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        subasta.type == 'Vivo'
                                            ? 'OFERTA EN VIVO'
                                            : 'OFERTA NEGOCIABLE',
                                        style: TextStyle(
                                            color: ColorsUtils.grey1
                                                .withOpacity(0.2),
                                            fontSize: 14),
                                      ),
                                      const SizedBox(height: 20),
                                      ButtonWid(
                                          width: 380,
                                          height: 100,
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
                                          voidCallback: () =>
                                              subasta.type == 'Vivo'
                                                  ? _.subasEnVivo('123')
                                                  : _.subastaNegociar('123')),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.home,
                                            size: 20,
                                            color: subasta.type == 'Vivo'
                                                ? ColorsUtils.blue3
                                                : ColorsUtils.grey1,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            subasta.type == 'Vivo'
                                                ? 'Mínimo 2 participantes'
                                                : 'Comisión del 05% del valor final',
                                            style: const TextStyle(
                                                color: ColorsUtils.blue3,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      subasta.type == 'Vivo'
                                          ? Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 30),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      color:
                                                          ColorsUtils.orange2)),
                                              child: Column(
                                                children: const [
                                                  Text('0.5% DE COMISIÓN',
                                                      style: TextStyle(
                                                          fontSize: 8,
                                                          color: ColorsUtils
                                                              .grey1)),
                                                  Text('US\$ 32400.00',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: ColorsUtils
                                                              .orange2)),
                                                ],
                                              ),
                                            )
                                          : const SizedBox(),
                                      const SizedBox(height: 20),
                                      subasta.type == 'Vivo'
                                          ? const Text('PRECIO DE RESERVA',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorsUtils.grey1))
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
                                                  margin: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 47,
                                                        height: 47,
                                                        decoration:
                                                            const BoxDecoration(
                                                                color:
                                                                    ColorsUtils
                                                                        .orange2,
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: const Icon(
                                                          Icons.settings,
                                                          color:
                                                              ColorsUtils.white,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text('INFORMACIÓN',
                                                          style: TextStyle(
                                                              color: ColorsUtils
                                                                  .blue3,
                                                              fontSize: 20)),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 47,
                                                        height: 47,
                                                        decoration:
                                                            const BoxDecoration(
                                                                color:
                                                                    ColorsUtils
                                                                        .orange2,
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: const Icon(
                                                          Icons.location_pin,
                                                          color:
                                                              ColorsUtils.white,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text('UBICACIÓN',
                                                          style: TextStyle(
                                                              color: ColorsUtils
                                                                  .blue3,
                                                              fontSize: 20)),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                          SizedBox(
                                            height: 600,
                                            child: TabBarView(children: [
                                              SingleChildScrollView(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      const Text('Descripción',
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
                                                      const Text('Ficha Técnica',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.bold,
                                                              fontSize: 20)),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Text(subasta.fileTecnique,
                                                          style: const TextStyle(
                                                            fontSize: 20,
                                                          ),overflow: TextOverflow.ellipsis,),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                  SingleChildScrollView(
                                      child: Container(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text('Ubicación',
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
                                                    const Text('Seleccione una fecha',style:TextStyle(fontSize: 12)),
                                                    Container(
                                                      width: web? size.width*0.25:size.width*0.5,
                                                      padding:const EdgeInsets.symmetric(
                                                          horizontal: 20),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          const BorderRadius.all(Radius.circular(5)),
                                                          border: Border.all(
                                                              color: ColorsUtils.grey1.withOpacity(0.5))),
                                                      child: DropdownButton<String>(
                                                        underline: Container(
                                                          height: 0,
                                                          color: Colors.transparent,
                                                        ),
                                                        isExpanded:true,
                                                        items: const [
                                                          DropdownMenuItem(child: Text('Lunes 27 de Setiembre')),
                                                        ],
                                                        onChanged: (value) => null,
                                                      ),
                                                    ), const SizedBox(height: 50),
                                                    const Text('Seleccione una hora',style:TextStyle(fontSize: 12)),
                                                    Container(
                                                      width: web? size.width*0.25:size.width*0.5,
                                                      padding:const EdgeInsets.symmetric(
                                                          horizontal: 20),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          const BorderRadius.all(Radius.circular(5)),
                                                          border: Border.all(
                                                              color: ColorsUtils.grey1.withOpacity(0.5))),
                                                      child: DropdownButton<String>(
                                                        underline: Container(
                                                          height: 0,
                                                          color: Colors.transparent,
                                                        ),
                                                        isExpanded:true,
                                                        items: const [
                                                          DropdownMenuItem(child: Text('9:00')),
                                                        ],
                                                        onChanged: (value) => null,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),)
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
                                        color: const Color(0xffF6F6F6),
                                        height: 169,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Center(
                                            child: Text(
                                          subasta.name,
                                          style: const TextStyle(
                                              color: ColorsUtils.grey1,
                                              fontSize: 30),
                                        )),
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
                                                textButt:
                                                    'Descargar ficha técnica',
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
                            const FooterWid()
                          ])),
                )
              : const Scaffold(body: Center(child: LoadingWid()));
        });
  }
}
