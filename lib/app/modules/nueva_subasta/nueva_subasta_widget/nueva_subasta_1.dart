import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/models/horas_subasta.dart';
import 'package:subastalo/app/data/models/tipos_subasta.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class NuevaSubasta1 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: logic.formKey1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Categoría', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'categorias',
                    builder: (_) {
                      final categorias = _.categoriasModel?.categorys;
                      return categorias != null
                          ? categorias.isNotEmpty
                              ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                          Border.all(color: ColorsUtils.grey1)),
                                  height: 50,
                                  child: DropdownButton<Category>(
                                    underline: Container(
                                      height: 0,
                                      color: Colors.transparent,
                                    ),
                                    hint:
                                        const Text('Seleccione una categoría'),
                                    isExpanded: true,
                                    value: _.selectedC,
                                    items: categorias
                                        .map((e) => DropdownMenuItem<Category>(
                                            value: e,
                                            child: Text(e.name)))
                                        .toList(),
                                    onChanged: (value) =>
                                        _.categorySelect(value as Category),
                                  ),
                                )
                              : const NoDataWid()
                          : const LoadingWid();
                    }),
                const Text('Sub-categorias', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'subCategorias',
                    builder: (_) {
                      final subCategorias = _.subCategorys;
                      return subCategorias.isNotEmpty
                          ? Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: ColorsUtils.grey1)),
                              height: 50,
                              child: DropdownButton<SubCategory>(
                                underline: Container(
                                  height: 0,
                                  color: Colors.transparent,
                                ),
                                hint:
                                    const Text('Seleccione una sub-categoria'),
                                isExpanded: true,
                                value: _.selectedSC,
                                items: subCategorias
                                    .map((e) => DropdownMenuItem<SubCategory>(
                                  value: e,
                                        child: Text(e.name)))
                                    .toList(),
                                onChanged: (value) =>
                                    _.subCategorySelect(value as SubCategory),
                              ),
                            )
                          : const NoDataWid();
                    }),
                const SizedBox(height: 10),
                const Text('Subasta Titulo', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    controller: logic.titleCtrl,
                    validator: isNotEmpty,
                    width: web ? size.width * 0.3 : size.width,
                    hint: 'Título de la subasta',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1,
                    focusedBorder: ColorsUtils.blue3),
                const SizedBox(height: 10),
                const Text('Tipo subasta', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'tiposSubasta',
                    builder: (_) {
                      final tiposSubasta = _.tiposSubastaModel?.typeSubasta;
                      return tiposSubasta!=null? tiposSubasta.isNotEmpty
                          ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: ColorsUtils.grey1)),
                        height: 50,
                        child: DropdownButton<TypeSubasta>(
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          hint:
                          const Text('Seleccione una hora'),
                          isExpanded: true,
                          value: _.selectTypeSubasta,
                          items: tiposSubasta
                              .map((e) => DropdownMenuItem<TypeSubasta>(
                              value: e,
                              child: Text(e.name)))
                              .toList(),
                          onChanged: (value) =>
                              _.typeSubastaSelect(value as TypeSubasta),
                        ),
                      )
                          : const NoDataWid():const LoadingWid();
                    }),
                const SizedBox(height: 10),
                const Text('Precio', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                TxtFieldBor(
                    controller: logic.priceCtrl,
                    validator: isNotEmpty,
                    width: web ? size.width * 0.3 : size.width,
                    hint: 'Ej. 1500',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1,
                    focusedBorder: ColorsUtils.blue3),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                const Text('Fecha de la subasta',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'date',
                    builder: (_) {
                      final date = _.selectedDate;
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: logic.selectDate,
                          child: Container(
                              width: size.width * 0.3,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: ColorsUtils.grey1)),
                              height: 50,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      '${date.year}/${date.month}/${date.day}'))),
                        ),
                      );
                    }),
                const SizedBox(height: 10),
                const Text('Horas', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
                GetBuilder<NuevaSubastaLogic>(
                    id: 'horas',
                    builder: (_) {
                      final horasSubasta = _.horasSubastaModel?.horasSubasta;
                      return horasSubasta!=null? horasSubasta.isNotEmpty
                          ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: ColorsUtils.grey1)),
                        height: 50,
                        child: DropdownButton<HorasSubasta>(
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          hint:
                          const Text('Seleccione una hora'),
                          isExpanded: true,
                          value: _.selectedHS,
                          items: horasSubasta
                              .map((e) => DropdownMenuItem<HorasSubasta>(
                              value: e,
                              child: Text(e.time)))
                              .toList(),
                          onChanged: (value) =>
                              _.horaSubastaSelect(value as HorasSubasta),
                        ),
                      )
                          : const NoDataWid():const LoadingWid();
                    }),
                const SizedBox(height: 40),
                Center(
                  child: ButtonWid(
                      width: web ? size.width * 0.15 : size.width * 0.5,
                      height: 50,
                      color1: ColorsUtils.blueButt1,
                      color2: ColorsUtils.blueButt2,
                      textButt: 'Siguiente',
                      voidCallback: () => logic.changeSelected('2')),
                ),
              ],
            )),
      ),
    );
  }
}
