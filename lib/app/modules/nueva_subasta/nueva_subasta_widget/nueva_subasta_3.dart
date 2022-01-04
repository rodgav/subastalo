import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class NuevaSubasta3 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;final bool web = size.width > 800;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(key: logic.formKey3,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('País', style: TextStyle(fontSize: 16)),
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
                hint: const Text('Seleccione una país'),
                isExpanded: true,
                items: const [DropdownMenuItem<String>(child: Text('Perú'))],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 10),
            const Text('Departamento', style: TextStyle(fontSize: 16)),
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
                hint: const Text('Seleccione un departamento'),
                isExpanded: true,
                items: const [DropdownMenuItem<String>(child: Text('Lima'))],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 10),
            const Text('Ciudad', style: TextStyle(fontSize: 16)),
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
                hint: const Text('Seleccione una ciudad'),
                isExpanded: true,
                items: const [DropdownMenuItem<String>(child: Text('Lima'))],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 10),
            const Text('Distrito', style: TextStyle(fontSize: 16)),
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
                hint: const Text('Seleccione un distrito'),
                isExpanded: true,
                items: const [DropdownMenuItem<String>(child: Text('Lima'))],
                onChanged: (value) {},
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
                  voidCallback: () => logic.changeSelected('4')),
            ),
          ],
        )),
      ),
    );
  }
}
