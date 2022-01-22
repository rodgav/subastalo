import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/modules/campanas/campanas_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

class NewlCampana extends StatelessWidget {
  const NewlCampana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CampanasLogic>(builder: (_) {
      return Form(
        key: _.formKey,
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: _.toBack,
                        icon: const Icon(
                          Icons.close,
                          color: ColorsUtils.blue3,
                        ))
                  ],
                ),
                const Center(
                  child: ImageIcon(
                    AssetImage('assets/icons/usuarios.png'),
                    size: 60,
                  ),
                ),
                const Center(
                  child: Text(
                    'Crear campaña',
                    style: TextStyle(fontSize: 26, color: ColorsUtils.blue3),
                  ),
                ),
                const Center(
                  child: Text(
                    'Aquí podrás crear las campañas',
                    style: TextStyle(fontSize: 16, color: ColorsUtils.grey1),
                  ),
                ),
                const Divider(),
                const SizedBox(height: 20),
                const Text('Nombre de la compañia',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor( validator: isNotEmpty,
                    controller: _.nameCompanCtrl,
                    width: 400,
                    hint: '',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Código de promoción',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor( validator: isNotEmpty,
                    controller: _.codePromCtrl,
                    width: 400,
                    hint: '',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Monto de descuento',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                TxtFieldBor( validator: isNotEmpty,
                    controller: _.ammountDescCtrl,
                    width: 400,
                    hint: '',
                    icon: null,
                    enabledBorder: ColorsUtils.grey1.withOpacity(0.5),
                    focusedBorder: ColorsUtils.blue3.withOpacity(0.5)),
                const SizedBox(height: 15),
                const Text('Fecha de inicio',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                GetBuilder<CampanasLogic>(
                    id: 'dateStart',
                    builder: (_) {
                      final date = _.selectedStartDate;
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: _.selectDateStart,
                          child: Container(
                              width: double.infinity,
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
                const SizedBox(height: 15),
                const Text('Fecha de fin',
                    style: TextStyle(fontSize: 12, color: ColorsUtils.grey1)),
                const SizedBox(height: 5),
                GetBuilder<CampanasLogic>(
                    id: 'dateEnd',
                    builder: (_) {
                      final date = _.selectedEndDate;
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: _.selectDateEnd,
                          child: Container(
                              width: double.infinity,
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
                const SizedBox(height: 20),
                ButtonWid(
                    width: 400,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'Crear campaña',
                    voidCallback: _.saveCampaign)
              ],
            ),
          ),
        ),
      );
    });
  }
}
