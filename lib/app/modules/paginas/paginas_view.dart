import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'paginas_logic.dart';

class PaginasPage extends StatelessWidget {
  final logic = Get.find<PaginasLogic>();

  PaginasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: web ? 50 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('PÁGINAS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('Aquí podrás gestionar tus páginas',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        ButtonWid(
                            width: 186,
                            height: 40,
                            color1: ColorsUtils.blueButt1,
                            color2: ColorsUtils.blueButt2,
                            textButt: 'Crear nueva página',
                            voidCallback: logic.toNewPage)
                      ],
                    ),
                    const Divider(height: 20),
                    DataTable(columns: [
                      DataColumn(
                          label: Checkbox(value: false, onChanged: (value) {})),
                      const DataColumn(
                          label: Text(
                        'ID',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Título',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Creado',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Acciones',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Acciones',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                    ], rows: [
                      DataRow(cells: [
                        DataCell(Checkbox(value: false, onChanged: (value) {})),
                        const DataCell(Text('001')),
                        const DataCell(Text('Quienes somos')),
                        const DataCell(Text('05/12/2020')),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Editar página',
                              style: TextStyle(color: ColorsUtils.blue3),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.edit, color: ColorsUtils.blue3)
                          ],
                        )),
                        DataCell(
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  'Eliminar página',
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.restore_from_trash_sharp,
                                    color: Colors.red)
                              ],
                            ),
                            onTap: logic.delPagina),
                      ])
                    ])
                  ],
                )));
      },
    );
  }
}
