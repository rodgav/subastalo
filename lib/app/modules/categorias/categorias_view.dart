import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

import 'categorias_logic.dart';

class CategoriasPage extends StatelessWidget {
  final logic = Get.find<CategoriasLogic>();

  CategoriasPage({Key? key}) : super(key: key);

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
                    const Text('CATEGORÍAS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus categorías',
                        style: TextStyle(fontSize: 12)),
                    const Divider(height: 20),
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox( width: width*0.65,
                          child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Nombre de la categoría',
                              style: TextStyle(color: ColorsUtils.grey1),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                                height: 35,
                                child: TxtFieldBor(
                                    controller: logic.nameCtrl,
                                    validator: isNotEmpty,
                                    width: width*0.65,
                                    hint: 'Ingresar nombre de categoria',
                                    icon: null,
                                    enabledBorder:
                                    ColorsUtils.grey1.withOpacity(0.5),
                                    focusedBorder:
                                    ColorsUtils.blue3.withOpacity(0.5))),
                          ],
                        ),),
                        ButtonWid(
                            width: width*0.2,
                            height: 40,
                            color1: ColorsUtils.grey1,
                            color2: ColorsUtils.grey2,
                            textButt: 'Agregar',
                            voidCallback: logic.saveCategory)
                      ],
                    ),
                    const Divider(height: 20),
                    GetBuilder<CategoriasLogic>(
                        id: 'categorias',
                        builder: (_) {
                          final categorias = _.categoriasModel?.categorys;
                          return categorias != null
                              ? categorias.isNotEmpty
                                  ? web
                                      ? DataTable(
                                          columns: [
                                              DataColumn(
                                                  label: Checkbox(
                                                      value: false,
                                                      onChanged: (value) {})),
                                              const DataColumn(
                                                  label: Text(
                                                'ID',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                              const DataColumn(
                                                  label: Text(
                                                'Nombre de categoría',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                              const DataColumn(
                                                  label: Text(
                                                'Creado',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                              const DataColumn(
                                                  label: Text(
                                                'Acciones',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                              const DataColumn(
                                                  label: Text(
                                                'Acciones',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ],
                                          rows: categorias
                                              .map((e) => DataRow(cells: [
                                                    DataCell(Checkbox(
                                                        value: false,
                                                        onChanged: (value) {})),
                                                    DataCell(
                                                        Text(e.id.toString())),
                                                    DataCell(Text(e.name),
                                                        onTap: () =>
                                                            _.toSubcategory(
                                                                e.id)),
                                                    DataCell(Text(e.createdAt
                                                        .toString()
                                                        .substring(0, 10))),
                                                    DataCell(
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: const [
                                                            Text(
                                                              'Editar categoría',
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorsUtils
                                                                          .blue3),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Icon(Icons.edit,
                                                                color:
                                                                    ColorsUtils
                                                                        .blue3)
                                                          ],
                                                        ),
                                                        onTap: () => logic
                                                            .editCateg(e.id)),
                                                    DataCell(
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: const [
                                                            Text(
                                                              'Eliminar categoría',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red),
                                                            ),
                                                            SizedBox(width: 5),
                                                            Icon(
                                                                Icons
                                                                    .restore_from_trash_sharp,
                                                                color:
                                                                    Colors.red)
                                                          ],
                                                        ),
                                                        onTap: () => logic
                                                            .delCateg(e.id)),
                                                  ]))
                                              .toList())
                                      : ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (__, index) {
                                            final categoria = categorias[index];
                                            return ListTile(
                                              title: Text(categoria.name),
                                              trailing: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  IconButton(
                                                      icon: const Icon(
                                                          Icons.edit),
                                                      onPressed: () =>
                                                          _.editCateg(
                                                              categoria.id)),
                                                  IconButton(
                                                      icon: const Icon(
                                                          Icons.delete),
                                                      onPressed: () =>
                                                          _.delCateg(
                                                              categoria.id)),
                                                ],
                                              ),
                                              onTap: () =>
                                                  _.toSubcategory(categoria.id),
                                            );
                                          },
                                          separatorBuilder: (__, index) =>
                                              const Divider(),
                                          itemCount: categorias.length,
                                        )
                                  : const NoDataWid()
                              : const LoadingWid();
                        }),
                  ],
                )));
      },
    );
  }
}
