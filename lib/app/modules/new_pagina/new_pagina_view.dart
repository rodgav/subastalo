import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

import 'new_pagina_logic.dart';

class NewPaginaPage extends StatelessWidget {
  final logic = Get.find<NewPaginaLogic>();

  NewPaginaPage({Key? key}) : super(key: key);

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
                    const Text('PÁGINAS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus páginas',
                        style: TextStyle(fontSize: 12)),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.arrow_back_ios_sharp,
                                color: ColorsUtils.black),
                            SizedBox(width: 5),
                            Text('Volver a subastas',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        onTap: logic.toBack,
                      ),
                    ),
                    const Divider(height: 20),
                    const Text('Crear nueva página',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                     TxtFieldBor(controller: logic.titleCtrl, validator: isNotEmpty,
                        width: 215,
                        hint: 'Título',
                        icon: null,
                        enabledBorder: ColorsUtils.grey1,
                        focusedBorder: ColorsUtils.blue3),
                    const SizedBox(height: 10),
                    TxtFieldBor(controller: logic.pageCtrl, validator: isNotEmpty,
                        width: width,
                        hint: 'HTML',
                        maxLines: 10,
                        icon: null,
                        enabledBorder: ColorsUtils.grey1,
                        focusedBorder: ColorsUtils.blue3),
                    const SizedBox(height: 40),
                    ButtonWid(
                        width: 400,
                        height: 50,
                        color1: ColorsUtils.red,
                        color2: ColorsUtils.red,
                        textButt: 'Guardar página',
                        voidCallback: ()=>null)
                  ],
                )));
      },
    );
  }
}
