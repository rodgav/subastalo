import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/modules/t_bloqueadas/t_bloquedas_widget/t_bloqueada.dart';

import 't_bloqueadas_logic.dart';

class TBloqueadasPage extends StatelessWidget {
  final logic = Get.find<TBloqueadasLogic>();

  TBloqueadasPage({Key? key}) : super(key: key);

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
                  const Text('SUBASTAS BLOQUEADAS',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Text('Aquí podrás gestionar tus subastas',
                      style: TextStyle(fontSize: 12)),
                  const Divider(height: 20),
                  GetBuilder<TBloqueadasLogic>(
                      id: 'subastas',
                      builder: (_) {
                        final subastas = _.subastaModel?.subasta;
                        return subastas != null
                            ? subastas.isNotEmpty
                                ? ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (_, index) =>
                                        TBloqueada(subasta: subastas[index],width: width),
                          itemCount: subastas.length,
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const Divider(),
                                  )
                                : const NoDataWid()
                            : const LoadingWid();
                      }),
                ],
              )));
    });
  }
}
