import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
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
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        Column(
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
                                child: TxtFieldBor(controller: logic.nameCtrl, validator: isNotEmpty,
                                    width: web ? width * 0.25 : width,
                                    hint: 'Ingresar nombre de categoria',
                                    icon: null,
                                    enabledBorder:
                                        ColorsUtils.grey1.withOpacity(0.5),
                                    focusedBorder:
                                        ColorsUtils.blue3.withOpacity(0.5))),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Descripción de categoría',
                              style: TextStyle(color: ColorsUtils.grey1),
                            ),
                            const SizedBox(height: 5),
                            TxtFieldBor(controller: logic.descrCtrl, validator: isNotEmpty,
                                width: web ? width * 0.65 : width,
                                hint: 'Ingresar breve descripción...',
                                maxLines: 2,
                                icon: null,
                                enabledBorder:
                                    ColorsUtils.grey1.withOpacity(0.5),
                                focusedBorder:
                                    ColorsUtils.blue3.withOpacity(0.5))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: web
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.center,
                      children: [
                        ButtonWid(
                            width: 186,
                            height: 40,
                            color1: ColorsUtils.grey1,
                            color2: ColorsUtils.grey2,
                            textButt: 'Agregar',
                            voidCallback: () => null)
                      ],
                    ),
                    const Divider(height: 20),
                    web
                        ? DataTable(columns: [
                            DataColumn(
                                label: Checkbox(
                                    value: false, onChanged: (value) {})),
                            const DataColumn(
                                label: Text(
                              'ID',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                            const DataColumn(
                                label: Text(
                              'Nombre de categoría',
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
                              DataCell(Checkbox(
                                  value: false, onChanged: (value) {})),
                              const DataCell(Text('001')),
                              const DataCell(
                                  Text('Autos & Otros Vehículos (0)')),
                              const DataCell(Text('05/12/2020')),
                              DataCell(
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        'Editar categoría',
                                        style:
                                            TextStyle(color: ColorsUtils.blue3),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(Icons.edit, color: ColorsUtils.blue3)
                                    ],
                                  ),
                                  onTap: logic.editCateg),
                              DataCell(Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    'Eliminar categoría',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.restore_from_trash_sharp,
                                      color: Colors.red)
                                ],
                              )),
                            ])
                          ])
                        : ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (__, index) {
                              return ListTile(
                                title: const Text('Nombre categoria'),
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
                          ),
                  ],
                )));
      },
    );
  }
}
