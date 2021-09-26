import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('INICIO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const Text('Aquí podrás visualizar un resumen de tu tablero',
                style: TextStyle(fontSize: 12)),
            const Divider(height: 20),
            LayoutBuilder(builder: (_, constraints) {
              final width = constraints.maxWidth;
              return SizedBox(
                width: width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    SizedBox(
                      width: web ? (width * 0.5) - 10 : width,
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
                        width: web ? (width * 0.5) - 10 : width,
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
                                                  color:
                                                      const Color(0xff5CB85C))),
                                          Container(
                                              width: 160,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xffF0F0F0))),
                                          Container(
                                              width: 160,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xffD9534F))),
                                          Container(
                                              width: 160,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xffF0AD4E))),
                                          Container(
                                              width: 160,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xff3277B2))),
                                          Container(
                                              width: 160,
                                              height: 125,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xffFF6B00))),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: web ? (width * 0.5) - 10 : width,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF9F9F9)),
                                      child:const Center(
                                        child: Text(
                                          'Ver historial de participación',
                                          style: TextStyle(
                                              color: Color(0xffFF0000),
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]))
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
