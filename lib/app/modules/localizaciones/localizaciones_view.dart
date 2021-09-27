import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'localizaciones_logic.dart';

class LocalizacionesPage extends StatelessWidget {
  final logic = Get.find<LocalizacionesLogic>();

  LocalizacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return Container(
          padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('LOCALIZACIONES',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Aquí podrás gestionar las localizaciones',
                      style: TextStyle(fontSize: 12)),
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: ColorsUtils.blue3,
                          unselectedLabelColor: Theme.of(context).hintColor,
                          indicator: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorsUtils.blue3,
                                width: 4,
                              ),
                            ),
                          ),
                          tabs: [
                            Container(
                              height: 30,
                              padding: const EdgeInsets.only(
                                  right: 10, top: 5, bottom: 5),
                              margin: const EdgeInsets.only(right: 10),
                              child: const Text(
                                'País',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 10, top: 5, bottom: 5),
                              margin: const EdgeInsets.only(right: 10),
                              child: const Text(
                                'Departamentos',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 10, top: 5, bottom: 5),
                              margin: const EdgeInsets.only(right: 10),
                              child: const Text(
                                'Ciudades',
                                style: TextStyle(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      'Seleccione un país para el sitio web'),
                                  const SizedBox(height: 5),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: ColorsUtils.grey1)),
                                    width: 307,
                                    height: 35,
                                    child: DropdownButton<String>(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Paises'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('PERÚ'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ButtonWid(
                                      width: 186,
                                      height: 40,
                                      color1: ColorsUtils.grey1,
                                      color2: ColorsUtils.grey1,
                                      textButt: 'Guardar',
                                      voidCallback: () => null),
                                  const Divider(),
                                  DataTable(columns: const [
                                    DataColumn(
                                        label: Text(
                                      'ID',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de país',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Código de país',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('001')),
                                      DataCell(Text('Afghanistan')),
                                      DataCell(Text('045')),
                                    ])
                                  ])
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                              'Seleccione un país para el sitio web'),
                                          const SizedBox(height: 5),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: ColorsUtils.grey1)),
                                            width: 307,
                                            height: 50,
                                            child: DropdownButton<String>(
                                              underline: Container(
                                                height: 0,
                                                color: Colors.transparent,
                                              ),
                                              hint: const Text('Paises'),
                                              isExpanded: true,
                                              items: const [
                                                DropdownMenuItem<String>(
                                                    child: Text('PERÚ'))
                                              ],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                              'Seleccione un país para el sitio web'),
                                          const SizedBox(height: 5),
                                          TxtFieldBor(
                                              width: 307,
                                              hint:
                                                  'Ingrese nombre de departamento',
                                              icon: null,
                                              enabledBorder: ColorsUtils.grey1
                                                  .withOpacity(0.5),
                                              focusedBorder: ColorsUtils.blue3
                                                  .withOpacity(0.5))
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  ButtonWid(
                                      width: 186,
                                      height: 40,
                                      color1: ColorsUtils.grey1,
                                      color2: ColorsUtils.grey1,
                                      textButt: 'Guardar',
                                      voidCallback: () => null),
                                  const Divider(),
                                  DataTable(columns: const [
                                    DataColumn(
                                        label: Text(
                                      'ID',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de departamento',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de país',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Acciones',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Acciones',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ], rows: [
                                    DataRow(cells: [
                                      const DataCell(Text('001')),
                                      const DataCell(Text('Apurimac')),
                                      const DataCell(Text('Perú')),
                                      DataCell(
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text(
                                                'Editar departamento',
                                                style: TextStyle(
                                                    color: ColorsUtils.blue3),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(Icons.edit,
                                                  size: 17,
                                                  color: ColorsUtils.blue3)
                                            ],
                                          ),
                                          onTap: logic.editDepart),
                                      DataCell(Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text(
                                            'Eliminar departamento',
                                            style: TextStyle(
                                                color: ColorsUtils.red),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(Icons.edit,
                                              size: 17, color: ColorsUtils.red)
                                        ],
                                      )),
                                    ])
                                  ])
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                              'Seleccione un país para el sitio web'),
                                          const SizedBox(height: 5),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: ColorsUtils.grey1)),
                                            width: 307,
                                            height: 50,
                                            child: DropdownButton<String>(
                                              underline: Container(
                                                height: 0,
                                                color: Colors.transparent,
                                              ),
                                              hint: const Text('Paises'),
                                              isExpanded: true,
                                              items: const [
                                                DropdownMenuItem<String>(
                                                    child: Text('PERÚ'))
                                              ],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                              'Seleccione un departamento'),
                                          const SizedBox(height: 5),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: ColorsUtils.grey1)),
                                            width: 307,
                                            height: 50,
                                            child: DropdownButton<String>(
                                              underline: Container(
                                                height: 0,
                                                color: Colors.transparent,
                                              ),
                                              hint: const Text('Departamentos'),
                                              isExpanded: true,
                                              items: const [
                                                DropdownMenuItem<String>(
                                                    child: Text('PERÚ'))
                                              ],
                                              onChanged: (value) {},
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('Seleccione una ciudad'),
                                          const SizedBox(height: 5),
                                          TxtFieldBor(
                                              width: 307,
                                              hint:
                                                  'Ingrese nombre de una ciudad',
                                              icon: null,
                                              enabledBorder: ColorsUtils.grey1
                                                  .withOpacity(0.5),
                                              focusedBorder: ColorsUtils.blue3
                                                  .withOpacity(0.5))
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  ButtonWid(
                                      width: 186,
                                      height: 40,
                                      color1: ColorsUtils.grey1,
                                      color2: ColorsUtils.grey1,
                                      textButt: 'Guardar',
                                      voidCallback: () => null),
                                  const Divider(),
                                  DataTable(columns: const [
                                    DataColumn(
                                        label: Text(
                                      'ID',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de departamento',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de país',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Nombre de ciudad',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Acciones',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text(
                                      'Acciones',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ], rows: [
                                    DataRow(cells: [
                                      const DataCell(Text('001')),
                                      const DataCell(Text('Apurimac')),
                                      const DataCell(Text('Perú')),
                                      const DataCell(Text('Ciudad nombre1')),
                                      DataCell(
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text(
                                                'Editar ciudad',
                                                style: TextStyle(
                                                    color: ColorsUtils.blue3),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(Icons.edit,
                                                  size: 17,
                                                  color: ColorsUtils.blue3)
                                            ],
                                          ),
                                          onTap: logic.editCiudad),
                                      DataCell(Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: const [
                                          Text(
                                            'Eliminar ciudad',
                                            style: TextStyle(
                                                color: ColorsUtils.red),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(Icons.edit,
                                              size: 17, color: ColorsUtils.red)
                                        ],
                                      )),
                                    ])
                                  ])
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
