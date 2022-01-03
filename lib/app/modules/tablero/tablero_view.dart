import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'tablero_logic.dart';

class TableroPage extends StatelessWidget {
  final logic = Get.find<TableroLogic>();

  TableroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(builder: (_, constraints) {
      final width = constraints.maxWidth;
      return SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('INICIO',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const Text('Aquí podrás visualizar un resumen de tu tablero',
                  style: TextStyle(fontSize: 12)),
              const Divider(height: 20),
              SizedBox(
                width: width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    SizedBox(
                      width: web ? (width * 0.45) : width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('RESUMEN',
                              style: TextStyle(
                                  fontSize: 22, color: ColorsUtils.blue3)),
                          const SizedBox(height: 10),
                          Container(
                            width: web ? (width * 0.5) - 10 : width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorsUtils.grey1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  width: web ? (width * 0.5) - 10 : width,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff878787)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Center(
                                    child: Text('Miembro desde: 05/11/2020',
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: ColorsUtils.blue3)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  runAlignment: WrapAlignment.spaceBetween,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 20,
                                  runSpacing: 20,
                                  children: [
                                    SizedBox(
                                        width: 160,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text('Seudónimo',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('7YUASD7',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3))
                                            ])),
                                    SizedBox(
                                        width: 160,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text('Calidad',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('Regular',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3))
                                            ])),
                                    SizedBox(
                                        width: 160,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text('Puntos Subastalo',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text('0',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: ColorsUtils.blue3))
                                            ]))
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Text('ESTADO DE CUENTA',
                              style: TextStyle(
                                  fontSize: 22, color: ColorsUtils.blue3)),
                          Container(
                            width: web ? (width * 0.5) - 10 : width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorsUtils.grey1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff878787)
                                                .withOpacity(0.2)),
                                        child: const Center(
                                          child: Text('Créditos Subastalo',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorsUtils.blue3,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 55,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffB9FCF0)),
                                        child: const Center(
                                          child: Text('Saldo',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorsUtils.blue3,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 55,
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 29,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff878787)
                                                            .withOpacity(0.2)),
                                                child: const Center(
                                                    child: Text('Saldo',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: ColorsUtils
                                                                .blue3,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)))),
                                            const SizedBox(
                                              height: 26,
                                              child:
                                                  Center(child: Text('S/. 0')),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: SizedBox(
                                        height: 55,
                                        child: Center(
                                          child: Text('ASP 0',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorsUtils.blue3,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffE0FDF8)
                                                .withOpacity(0.2)),
                                        child: const Center(
                                          child: Text('S/. 0',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: ColorsUtils.blue3)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 55,
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 29,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff878787)
                                                            .withOpacity(0.2)),
                                                child: const Center(
                                                    child: Text('Deuda',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: ColorsUtils
                                                                .blue3,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)))),
                                            const SizedBox(
                                              height: 26,
                                              child:
                                                  Center(child: Text('S/. 0')),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: web ? (width * 0.5) - 10 : width,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xff878787)
                                          .withOpacity(0.2)),
                                  child: const Center(
                                      child: Text(
                                          'Convertir mi Saldo en Crédito Subastalo')),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: web ? (width * 0.45) : width,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('HISTORIAL DE PARTICIPACIÓN',
                                  style: TextStyle(
                                      fontSize: 22, color: ColorsUtils.blue3)),
                              const SizedBox(height: 10),
                              Container(
                                width: web ? (width * 0.5) - 10 : width,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: ColorsUtils.grey1),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: web ? (width * 0.5) - 10 : width,
                                      child: Wrap(
                                        alignment: web
                                            ? WrapAlignment.spaceBetween
                                            : WrapAlignment.center,
                                        runAlignment:
                                            WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        spacing: 20,
                                        runSpacing: 20,
                                        children: [
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xff5CB85C)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '42\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Subasta aprobada',
                                                    style: TextStyle(
                                                      color: ColorsUtils.white,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xffF0F0F0)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '12\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.black,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Subasta pendiente',
                                                    style: TextStyle(
                                                      color: ColorsUtils.black,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xffD9534F)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '07\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Bloqueadas',
                                                    style: TextStyle(
                                                      color: ColorsUtils.white,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xffF0AD4E)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '33\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Informes',
                                                    style: TextStyle(
                                                      color: ColorsUtils.white,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xff3277B2)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '23\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Concretados',
                                                    style: TextStyle(
                                                      color: ColorsUtils.white,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                          Container(
                                            width: 160,
                                            height: 125,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: const Color(0xffFF6B00)),
                                            padding: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                  text:
                                                      const TextSpan(children: [
                                                TextSpan(
                                                    text: '00\n',
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color:
                                                            ColorsUtils.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text: 'Ofertas en proceso',
                                                    style: TextStyle(
                                                      color: ColorsUtils.white,
                                                    )),
                                              ])),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        child: Container(
                                          width:
                                              web ? (width * 0.5) - 10 : width,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffF9F9F9)),
                                          child: const Center(
                                            child: Text(
                                              'Ver historial de participación',
                                              style: TextStyle(
                                                  color: Color(0xffFF0000),
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]))
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text('MENSAJES\nRECIENTES',
                  style: TextStyle(fontSize: 22, color: ColorsUtils.blue3)),
              const SizedBox(height: 20),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (__, index) => SizedBox(
                        width: width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 14,
                                  color: ColorsUtils.red,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: RichText(
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    text:const TextSpan(children: [
                                      TextSpan(
                                          text: 'Albert Herrera\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text:
                                            'Resumen del contenido o mensaje recibido...',
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: ColorsUtils.grey1
                                              .withOpacity(0.5)))),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () => null,
                                          icon: const Icon(
                                            Icons.restore_from_trash_outlined,
                                            size: 12,
                                            color: ColorsUtils.grey1,
                                          )),
                                      const SizedBox(height: 5),
                                      const Text(
                                        '31 Oct',
                                        style: TextStyle(
                                            color: ColorsUtils.grey1,
                                            fontSize: 10),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () => null,
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorsUtils.grey2,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (__, index) => const Divider(),
                  itemCount: 4),
              const SizedBox(height: 40),
              Container(
                width: width,
                decoration: BoxDecoration(
                    color: const Color(0xffEBEFF1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: const BoxDecoration(
                          color: ColorsUtils.orange1,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            '0',
                            style: TextStyle(
                                fontSize: 50, color: ColorsUtils.white),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Lista de',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ColorsUtils.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'interes',
                                style: TextStyle(
                                    fontSize: 18, color: ColorsUtils.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 264,
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (__, index) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: ColorsUtils.white,
                              borderRadius: BorderRadius.circular(15)),
                          width: 264,
                          height: 264,
                          child: Center(
                              child: ImageIcon(
                            const AssetImage('assets/icons/corazon.png'),
                            color: ColorsUtils.grey1.withOpacity(0.5),
                          )),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: width,
                decoration: BoxDecoration(
                    color: const Color(0xffEBEFF1),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: const Text(
                        'Ofertas vistas:',
                        style: TextStyle(
                            fontSize: 18,
                            color: ColorsUtils.blue3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 101,
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (__, index) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: ColorsUtils.white,
                              borderRadius: BorderRadius.circular(15)),
                          width: 354,
                          height: 101,
                          child: Center(
                              child: ImageIcon(
                            const AssetImage('assets/icons/vehiculos.png'),
                            color: ColorsUtils.grey1.withOpacity(0.5),
                          )),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      );
    });
  }
}
