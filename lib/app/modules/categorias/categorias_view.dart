import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

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
                                width: width * 0.25,
                                height: 35,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    hintText: 'Ingresar nombre de categoria',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      borderSide: BorderSide(
                                          color: ColorsUtils.grey1
                                              .withOpacity(0.5),
                                          width: 0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0)),
                                      borderSide: BorderSide(
                                          color: ColorsUtils.blue3
                                              .withOpacity(0.5),
                                          width: 0),
                                    ),
                                  ),
                                )),
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
                            SizedBox(
                                width: width * 0.65,
                                height: 70,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    hintText: 'Ingresar breve descripción...',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      borderSide: BorderSide(
                                          color: ColorsUtils.grey1
                                              .withOpacity(0.5),
                                          width: 0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0)),
                                      borderSide: BorderSide(
                                          color: ColorsUtils.blue3
                                              .withOpacity(0.5),
                                          width: 0),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ],
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
                        DataCell(Checkbox(value: false, onChanged: (value) {})),
                        const DataCell(Text('001')),
                        const DataCell(Text('Autos & Otros Vehículos (0)')),
                        const DataCell(Text('05/12/2020')),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Editar categoría',
                              style: TextStyle(color: ColorsUtils.blue3),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.edit, color: ColorsUtils.blue3)
                          ],
                        )),
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
                  ],
                )));
      },
    );
  }
}
