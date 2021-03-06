import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/nueva_subasta/nueva_subasta_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class NuevaSubasta4 extends StatelessWidget {
  final logic = Get.find<NuevaSubastaLogic>();

  NuevaSubasta4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;final bool web = size.width > 800;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(key: logic.formKey4,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ID de vendedor', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.idVendCtrl, validator: isNotEmpty,
                width: web?size.width * 0.3:size.width,
                hint: 'Nombre',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Vendedor nombre', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.nameVendCtrl, validator: isNotEmpty,
                width: web?size.width * 0.3:size.width,
                hint: 'Nombre',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Empresa origen del vendedor',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.nameBussnCtrl, validator: isNotEmpty,
                width: web?size.width * 0.3:size.width,
                hint: 'Nombre',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Vendedor Email', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.emailBussnCtrl, validator: isEmail,
                width: web?size.width * 0.3:size.width,
                hint: 'subasta@subasta.com',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Vendedor tel??fono', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.phoneBussnCtrl, validator: isNotEmpty,
                width: web?size.width * 0.3:size.width,
                hint: 'Tel??fono',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 10),
            const Text('Direcci??n', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            TxtFieldBor(controller: logic.addreBussnCtrl, validator: isNotEmpty,
                width: web?size.width * 0.3:size.width,
                hint: 'Direcci??n',
                icon: null,
                enabledBorder: ColorsUtils.grey1,
                focusedBorder: ColorsUtils.blue3),
            const SizedBox(height: 40),
            Center(
              child: ButtonWid(
                  width:web? size.width * 0.15: size.width *0.5,
                  height: 50,
                  color1: ColorsUtils.blueButt1,
                  color2: ColorsUtils.blueButt2,
                  textButt: 'Finalizar',
                  voidCallback: logic.createNewSubasta),
            ),
          ],
        )),
      ),
    );
  }
}
