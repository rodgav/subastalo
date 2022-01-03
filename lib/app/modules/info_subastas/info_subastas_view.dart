import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

import 'info_subastas_logic.dart';

class InfoSubastasPage extends GetView<InfoSubastasLogic> {
  final logic = Get.find<InfoSubastasLogic>();

  InfoSubastasPage({Key? key}) : super(key: key);

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
                    const Text('INFORME DE SUBASTAS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text(
                        'Aquí podrás gestionar el informede tus subastas',
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 20),
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Seleccionar tipo de subasta',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            MouseRegion(
                              child: SizedBox(
                                width: 300,
                                child: DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                    height: 1,
                                    color: ColorsUtils.blue3,
                                  ),
                                  hint: const Text('Nosotros'),
                                  items: const [
                                    DropdownMenuItem<String>(
                                        child: Text('Negociables',
                                            style: TextStyle(fontSize: 16)))
                                  ],
                                  onChanged: (value) {},
                                ),
                              ),
                              cursor: SystemMouseCursors.click,
                            ),
                          ],
                        ),
                        TxtFieldBor(
                            controller: controller.nameOrId, validator: isNotEmpty,
                            width: 236,
                            hint: 'Buscar nombre o ID',
                            icon: null,
                            enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                            focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                        ButtonWid(
                            width: 200,
                            height: 45,
                            color1: ColorsUtils.blueButt1,
                            color2: ColorsUtils.blueButt2,
                            textButt: 'Buscar',
                            circular: 10,
                            voidCallback: () {})
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
                              'Subasta',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                            const DataColumn(
                                label: Text(
                              'Dueño',
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
                            ))
                          ], rows: [
                            DataRow(cells: [
                              DataCell(Checkbox(
                                  value: false, onChanged: (value) {})),
                              const DataCell(Text('001')),
                              const DataCell(Text(
                                  'VOLQUETE SCHACMAN F3000 DEL 2020 NUEVO')),
                              const DataCell(Text('Danilo Boy Vela')),
                              const DataCell(Text('05/12/2020')),
                              const DataCell(
                                Text(
                                  'Descargar ficha',
                                  style: TextStyle(color: ColorsUtils.blue3),
                                ),
                              ),
                            ])
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
      },
    );
  }
}
