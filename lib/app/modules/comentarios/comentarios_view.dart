import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'comentarios_logic.dart';

class ComentariosPage extends StatelessWidget {
  final logic = Get.find<ComentariosLogic>();

  ComentariosPage({Key? key}) : super(key: key);

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
                    const Text('COMENTARIOS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus comentarios',
                        style: TextStyle(fontSize: 12)),
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
                        'Usuario',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Comentario',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                      const DataColumn(
                          label: Text(
                        'Correo',
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
                        const DataCell(Text('Danilo Boy Vela')),
                        const DataCell(Text('COMENTARIO NUEVO DESCRIPCIÓN')),
                        const DataCell(Text('Danilo@gmail.com')),
                        const DataCell(Text('05/12/2020')),
                        const DataCell(
                          Text(
                            'Aprobar',
                            style: TextStyle(color: ColorsUtils.blue3),
                          ),
                        ),
                        const DataCell(
                          Text(
                            'Eliminar',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ])
                    ])
                  ],
                )));
      },
    );
  }
}
