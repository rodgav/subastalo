import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';

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
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Categoría', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: ColorsUtils.grey1)),
              height: 50,
              child: DropdownButton<String>(
                underline: Container(
                  height: 0,
                  color: Colors.transparent,
                ),
                hint: const Text('Seleccione una categoría'),
                isExpanded: true,
                items: const [DropdownMenuItem<String>(child: Text('Autos'))],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 10),
            const Text('Subasta Titulo', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(
                width: web?size.width * 0.3:size.width,
                hint: 'Título de la subasta',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Precio', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(
                width: web?size.width * 0.3:size.width,
                hint: 'Ej. 1500',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Fecha de la subasta', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(
                width: web?size.width * 0.3:size.width,
                hint: 'Fecha de la subasta',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 40),
            const Text('Descripción', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const CupertinoTextField(
              prefix:
                  Text('Marca', style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Toyota',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const CupertinoTextField(
              prefix:
                  Text('Modelo', style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Modelo',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const CupertinoTextField(
              prefix: Text('Año', style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Año',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const CupertinoTextField(
              prefix: Text('Kilometraje',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Kilometraje',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const CupertinoTextField(
              prefix: Text('Combustible',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Combustible',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const CupertinoTextField(
              prefix:
                  Text('Detalles', style: TextStyle(fontWeight: FontWeight.bold)),
              placeholder: 'Detalles',
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: ColorsUtils.grey1)),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: ButtonWid(
                  width:web? size.width * 0.15: size.width *0.5,
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
