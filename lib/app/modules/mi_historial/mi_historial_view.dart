import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/mi_historial/mi_favoritas_widget/item_mi_historial.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mi_historial_logic.dart';

class MiHistorialPage extends StatelessWidget {
  final logic = Get.find<MiHistorialLogic>();

  MiHistorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(builder: (__, constraints) {
      final width = constraints.maxWidth;
      return SingleChildScrollView(
          child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                    runAlignment: web?WrapAlignment.spaceBetween:WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,runSpacing: 10,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const[
                          Text('MI HISTORIAL DE SUBASTAS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('Aquí podrás ver las subastas en las que participaste',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const Divider(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (___, index) => ItemMiHistorial(
                      width: width,
                      voidCallback: () => null,
                    ),
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ],
              )));
    });
  }
}
