import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/t_subastas/t_subastas_widget/aprobado.dart';

import 't_subastas_logic.dart';

class TSubastasPage extends StatelessWidget {
  final logic = Get.find<TSubastasLogic>();

  TSubastasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(builder: (_, constraints) {
      final width = constraints.maxWidth;
      return SingleChildScrollView(
          child: Container(
              padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('SUBASTAS APROBADAS',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Text('Aquí podrás gestionar tus subastas',
                      style: TextStyle(fontSize: 12)),
                  const Divider(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => Aprobado(width: width),
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                  ),
                ],
              )));
    });
  }
}
