import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'usuarios_logic.dart';

class UsuariosPage extends StatelessWidget {
  final logic = Get.find<UsuariosLogic>();

  UsuariosPage({Key? key}) : super(key: key);

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
                  alignment:
                      web ? WrapAlignment.spaceBetween : WrapAlignment.center,
                  runAlignment:
                      web ? WrapAlignment.spaceBetween : WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('USUARIOS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Aquí podrás gestionar tus usuarios',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ButtonWid(
                        width: 186,
                        height: 40,
                        color1: ColorsUtils.blueButt1,
                        color2: ColorsUtils.blueButt2,
                        textButt: 'Añadir usuario',
                        voidCallback: logic.newUser)
                  ],
                ),
                const Divider(height: 20),
                GetBuilder<UsuariosLogic>(
                    id: 'usuarios',
                    builder: (_) {
                      final usuarios = _.userModel?.users;
                      return usuarios != null
                          ? usuarios.isNotEmpty
                              ? web
                                  ? DataTable(
                                      columns: const [
                                          DataColumn(
                                              label: Text(
                                            'ID',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataColumn(
                                              label: Text(
                                            'Usuario',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataColumn(
                                              label: Text(
                                            'Correo',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataColumn(
                                              label: Text(
                                            'Creado',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataColumn(
                                              label: Text(
                                            'Acciones',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          DataColumn(
                                              label: Text(
                                            'Acciones',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ],
                                      rows: usuarios
                                          .map((e) => DataRow(cells: [
                                                DataCell(Text(e.id.toString()),
                                                    onTap: () =>
                                                        logic.toUsuariosDetail(
                                                            e.id.toString())),
                                                DataCell(Text(e.name),
                                                    onTap: () =>
                                                        logic.toUsuariosDetail(
                                                            e.id.toString())),
                                                DataCell(Text(e.email),
                                                    onTap: () =>
                                                        logic.toUsuariosDetail(
                                                            e.id.toString())),
                                                DataCell(Text(e.createdAt
                                                    .toString()
                                                    .substring(0, 10))),
                                                DataCell(
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: const [
                                                        Text(
                                                          'Editar usuario',
                                                          style: TextStyle(
                                                              color: ColorsUtils
                                                                  .blue3),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Icon(Icons.edit,
                                                            color: ColorsUtils
                                                                .blue3)
                                                      ],
                                                    ),
                                                    onTap: () => _.editUser(e)),
                                                DataCell(Row(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: const [
                                                    Text(
                                                      'Eliminar usuario',
                                                      style: TextStyle(
                                                          color:
                                                          Colors.red),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Icon(
                                                        Icons
                                                            .restore_from_trash_sharp,
                                                        color: Colors.red)
                                                  ],
                                                ),
                                                  onTap: () =>
                                                      logic.delUser(e.id),),
                                              ]))
                                          .toList())
                                  : ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                                  icon:
                                                      const Icon(Icons.delete),
                                                  onPressed: () => null),
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder: (__, index) =>
                                          const Divider(),
                                      itemCount: usuarios.length,
                                    )
                              : const NoDataWid()
                          : const LoadingWid();
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
