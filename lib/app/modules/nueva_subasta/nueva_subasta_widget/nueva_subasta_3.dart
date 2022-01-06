import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/departamentos.dart';
import 'package:subastalo/app/data/models/distritos.dart';
import 'package:subastalo/app/data/models/provincias.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NuevaSubasta3 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: logic.formKey3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Departamento', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'departamentos',
                    builder: (_) {
                      final departamentos = _.departamentosModel?.departamentos;
                      return departamentos != null
                          ? departamentos.isNotEmpty
                              ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: ColorsUtils.grey1)),
                                  height: 50,
                                  child: DropdownButton<Departamento>(
                                    underline: Container(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
                                    hint: const Text(
                                        'Seleccione un departamento'),
                                    isExpanded: true,
                                    value: _.selectDepart,
                                    items: departamentos
                                        .map((e) =>
                                            DropdownMenuItem<Departamento>(
                                                value: e,
                                                child: Text(e.nombre)))
                                        .toList(),
                                    onChanged: (value) =>
                                        _.departSelect(value as Departamento),
                                  ),
                                )
                              : const NoDataWid()
                          : const LoadingWid();
                    }),
                const SizedBox(height: 10),
                const Text('Provincia', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'provincias',
                    builder: (_) {
                      final provincias = _.provinciasModel?.provincias;
                      return provincias != null
                          ? provincias.isNotEmpty
                              ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: ColorsUtils.grey1)),
                                  height: 50,
                                  child: DropdownButton<Provincia>(
                                    underline: Container(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
                                    hint:
                                        const Text('Seleccione una provincia'),
                                    isExpanded: true,
                                    value: _.selectProv,
                                    items: provincias
                                        .map((e) => DropdownMenuItem<Provincia>(
                                            value: e, child: Text(e.nombre)))
                                        .toList(),
                                    onChanged: (value) =>
                                        _.provSelect(value as Provincia),
                                  ),
                                )
                              : const NoDataWid()
                          : const LoadingWid();
                    }),
                const SizedBox(height: 10),
                const Text('Distrito', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'distritos',
                    builder: (_) {
                      final distritos = _.distritosModel?.distritos;
                      return distritos != null
                          ? distritos.isNotEmpty
                              ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: ColorsUtils.grey1)),
                                  height: 50,
                                  child: DropdownButton<Distrito>(
                                    underline: Container(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
                                    hint: const Text('Seleccione un distrito'),
                                    isExpanded: true,
                                    value: _.selectDistr,
                                    items: distritos
                                        .map((e) => DropdownMenuItem<Distrito>(
                                            value: e, child: Text(e.nombre)))
                                        .toList(),
                                    onChanged: (value) =>
                                        _.distriSelect(value as Distrito),
                                  ),
                                )
                              : const NoDataWid()
                          : const LoadingWid();
                    }),
                const SizedBox(height: 40),
                Center(
                  child: ButtonWid(
                      width: web ? size.width * 0.15 : size.width * 0.5,
                      height: 50,
                      color1: ColorsUtils.blueButt1,
                      color2: ColorsUtils.blueButt2,
                      textButt: 'Siguiente',
                      voidCallback: () => logic.changeSelected('4')),
                ),
              ],
            )),
      ),
    );
  }
}
