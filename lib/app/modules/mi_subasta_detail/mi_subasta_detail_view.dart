import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mi_subasta_detail_logic.dart';

class MiSubastaDetailPage extends StatelessWidget {
  const MiSubastaDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaDetailLogic>(builder: (_) {
      return LayoutBuilder(builder: (__, constraints) {
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
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          //color: ColorsUtils.grey1.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            Column(
                              children: [
                                const Text('Imagen del producto'),
                                SizedBox(
                                  height: web ? 40 : 20,
                                ),
                                Container(
                                  width: 258,
                                  height: 124,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/chevrolet.png'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 258,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Información'),
                                  SizedBox(
                                    height: web ? 40 : 20,
                                  ),
                                  const Text(
                                    '2008 CHEVROLET SILVERADO K2500 HEAVY DUTY',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: ColorsUtils.blue3),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(Icons.location_pin,
                                          size: 18, color: ColorsUtils.grey1),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Aoa eastern Alister Samoa',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: ColorsUtils.grey1),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(Icons.location_pin,
                                          size: 18, color: ColorsUtils.grey1),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Aoa eastern Alister Samoa',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: ColorsUtils.grey1),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(Icons.check,
                                          size: 18, color: ColorsUtils.green),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Aprobado',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: ColorsUtils.green),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Precio sugerido'),
                                  SizedBox(
                                    height: web ? 40 : 20,
                                  ),
                                  Container(
                                    width: 174,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: ColorsUtils.orange2)),
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text('0.5 % DE COMISIÓN',
                                              style: TextStyle(
                                                fontSize: 8,
                                              )),
                                          Text(
                                            'US\$ 32,400',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: ColorsUtils.orange2),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 20),
                    const SizedBox(height: 20),
                    const Text(
                      'PROPUESTAS RECIBIDAS',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    DataTable(columns: const [
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
                    ], rows: const [
                      DataRow(cells: [
                        DataCell(Text(
                          'Danilo Boy Vela',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                        DataCell(Text(
                          '33.000',
                          style: TextStyle(color: ColorsUtils.blue3),
                        )),
                        DataCell(Text(
                          '05/12/2020',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          'Fabrisio Vela Checkner',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                        DataCell(Text(
                          '32.000',
                          style: TextStyle(color: ColorsUtils.blue3),
                        )),
                        DataCell(Text(
                          '04/12/2020',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          'Jennifer ocampo Vela',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                        DataCell(Text(
                          '30.000',
                          style: TextStyle(color: ColorsUtils.blue3),
                        )),
                        DataCell(Text(
                          '03/12/2020',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Text(
                          'Rodrigo Temple Villanueva',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                        DataCell(Text(
                          '29.000',
                          style: TextStyle(color: ColorsUtils.blue3),
                        )),
                        DataCell(Text(
                          '02/12/2020',
                          style: TextStyle(color: ColorsUtils.grey1),
                        )),
                      ]),
                    ])
                  ],
                )));
      });
    });
  }
}
