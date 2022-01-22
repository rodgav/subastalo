import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
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
                Wrap(
                  alignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                  runAlignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,runSpacing: 10,
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
    GetBuilder<AdministradoresLogic>(id:'usuarios',builder: (_) {
    final usuarios = _.userModel?.users;
    return usuarios!=null? usuarios.isNotEmpty?  web
    ? DataTable(columns: [
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
                    'Acciones',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  const DataColumn(
                      label: Text(
                    'Acciones',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ], rows: usuarios.map((e) => DataRow(cells: [
      DataCell(Checkbox(value: false, onChanged: (value) {})),
      DataCell( Text(e.id.toString()), onTap: () => null),
      DataCell( Text(e.name), onTap: () => null),
      DataCell( Text(e.email), onTap: () => null),
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
    ])).toList()):
               ListView.separated(
                 physics: const NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemBuilder: (__, index) {
                   final usuario = usuarios[index];
                   return ListTile(
                     title: Text(usuario.name),
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
                 itemCount: usuarios.length,
               ): const NoDataWid()
        : const LoadingWid();})
              ],
            ),
          ),
        );
      },
    );
  }
}
