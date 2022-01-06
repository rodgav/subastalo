import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/constants.dart';

import 'mi_subasta_detail_logic.dart';

class MiSubastaDetailPage extends StatelessWidget {
  const MiSubastaDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaDetailLogic>(builder: (_) {
      return LayoutBuilder(builder: (__, constraints) {
        int random = Random().nextInt(10);
        final width = constraints.maxWidth;
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: web ? 50 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('MIS SUBASTAS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus subastas',
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 20),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.arrow_back_ios_sharp,
                                color: ColorsUtils.black),
                            SizedBox(width: 5),
                            Text('Volver a subastas',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        onTap: _.toBack,
                      ),
                    ),
                    const Divider(height: 20),
                    GetBuilder<MiSubastaDetailLogic>(
                        id: 'subasta',
                        builder: (_) {
                          final subasta = _.subasta;
                          return subasta != null
                              ? Container(
                                  width: width,
                                  decoration: BoxDecoration(
                                      //color: ColorsUtils.grey1.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(10),
                                  child: Center(
                                    child: Wrap(
                                      spacing: 20,
                                      runSpacing: 20,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            const Text('Imagen del producto'),
                                            SizedBox(
                                              height: web ? 40 : 20,
                                            ),
                                            SizedBox(
                                              width: 258,
                                              height: 124,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(
                                                  '${urlImageConst}image$random-${subasta.id}.png',
                                                  fit: BoxFit.cover,
                                                  loadingBuilder: (_, child, loading) => loading == null
                                                      ? child
                                                      : const Center(
                                                    child:  SizedBox(
                                                        width: 50, height: 50, child: LoadingWid()),
                                                  ),
                                                  errorBuilder: (_, __, ___) =>const Center(child:  NoDataWid()),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 258,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('Información'),
                                              SizedBox(
                                                height: web ? 40 : 20,
                                              ),
                                              Text(
                                                subasta.title,
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorsUtils.blue3),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                      subasta.idStateSubasta ==
                                                              1
                                                          ? Icons.check
                                                          : subasta.idStateSubasta ==
                                                                  2
                                                              ? Icons.error
                                                              : Icons.close,
                                                      size: 18,
                                                      color: subasta
                                                                  .idStateSubasta ==
                                                              1
                                                          ? ColorsUtils.orange1
                                                          : subasta.idStateSubasta ==
                                                                  2
                                                              ? ColorsUtils
                                                                  .green
                                                              : ColorsUtils
                                                                  .red),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    subasta.idStateSubasta == 1
                                                        ? 'Pendiente'
                                                        : subasta.idStateSubasta ==
                                                                2
                                                            ? 'Aprobada'
                                                            : 'Bloqueada',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: subasta
                                                                    .idStateSubasta ==
                                                                1
                                                            ? ColorsUtils
                                                                .orange1
                                                            : subasta.idStateSubasta ==
                                                                    2
                                                                ? ColorsUtils
                                                                    .green
                                                                : ColorsUtils
                                                                    .red),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: web ? 50 : 0),
                                        SizedBox(
                                          width: 258,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text('Precio sugerido'),
                                              SizedBox(
                                                height: web ? 40 : 20,
                                              ),
                                              Container(
                                                width: 174,
                                                height: 52,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    border: Border.all(
                                                        color: ColorsUtils
                                                            .orange2)),
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Center(
                                                  child: Text(
                                                      NumberFormat.currency()
                                                          .format(123456),
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: ColorsUtils
                                                              .orange2)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : const NoDataWid();
                        }),
                    const Divider(height: 20),
                    const SizedBox(height: 20),
                    const Text(
                      'PROPUESTAS RECIBIDAS',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    web
                        ? DataTable(columns: const [
                            DataColumn(
                                label: Text(
                              'Remitente',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Cantidad',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Fecha',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'Acciòn',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                          ], rows: [
                            DataRow(cells: [
                              const DataCell(Text(
                                'Danilo Boy Vela',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              const DataCell(Text(
                                '33.000',
                                style: TextStyle(color: ColorsUtils.blue3),
                              )),
                              const DataCell(Text(
                                '05/12/2020',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              DataCell(
                                  const Text(
                                    'Aceptar',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () => _.aceptar('123')),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text(
                                'Fabrisio Vela Checkner',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              const DataCell(Text(
                                '32.000',
                                style: TextStyle(color: ColorsUtils.blue3),
                              )),
                              const DataCell(Text(
                                '04/12/2020',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              DataCell(
                                  const Text(
                                    'Aceptar',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () => _.aceptar('123')),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text(
                                'Jennifer ocampo Vela',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              const DataCell(Text(
                                '30.000',
                                style: TextStyle(color: ColorsUtils.blue3),
                              )),
                              const DataCell(Text(
                                '03/12/2020',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              DataCell(
                                  const Text(
                                    'Aceptar',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () => _.aceptar('123')),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text(
                                'Rodrigo Temple Villanueva',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              const DataCell(Text(
                                '29.000',
                                style: TextStyle(color: ColorsUtils.blue3),
                              )),
                              const DataCell(Text(
                                '02/12/2020',
                                style: TextStyle(color: ColorsUtils.grey1),
                              )),
                              DataCell(
                                  const Text(
                                    'Aceptar',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  onTap: () => _.aceptar('123')),
                            ]),
                          ])
                        : ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (__, index) {
                              return ListTile(
                                title: const Text('Nombre'),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () => null),
                                    IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () => null),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (__, index) => const Divider(),
                            itemCount: 2,
                          )
                  ],
                )));
      });
    });
  }
}
