import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'administradores_logic.dart';

class AdministradoresPage extends StatelessWidget {
  AdministradoresPage({Key? key}) : super(key: key);
  final logic = Get.find<AdministradoresLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('ADMINISTRADORES',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Aquí podrás gestionar tus administradores',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ButtonIconRWid(
                        width: 200,
                        height: 40,
                        color1: ColorsUtils.blue3,
                        color2: ColorsUtils.blue3,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Añadir administrador',
                        voidCallback: logic.newAdmin)
                  ],
                ),
                const Divider(height: 20),
                DataTable(columns: [
                  DataColumn(
                      label: Checkbox(value: false, onChanged: (value) {})),
                  const DataColumn(
                      label: Text(
                    'ID',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Usuario',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Correo',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Último acceso',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Acciones',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Acciones',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Checkbox(value: false, onChanged: (value) {})),
                    DataCell(const Text('001'), onTap: () => null),
                    DataCell(const Text('Danilo Boy Vela'), onTap: () => null),
                    DataCell(const Text('Danilo@gmail.com'), onTap: () => null),
                    const DataCell(Text('05/12/2020  | 9:22 am')),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Editar administrador',
                          style: TextStyle(color: ColorsUtils.blue3),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.edit, color: ColorsUtils.blue3)
                      ],
                    )),
                    DataCell(MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Eliminar administrador',
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.restore_from_trash_sharp,
                                color: Colors.red)
                          ],
                        ),
                        onTap: logic.delAdmin,
                      ),
                    )),
                  ])
                ])
              ],
            ),
          ),
        );
      },
    );
  }
}
