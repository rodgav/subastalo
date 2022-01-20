import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/modules/mi_pendientes/mi_pendientes_widget/item_mi_subasta.dart';

import 'mi_pendientes_logic.dart';

class MiPendientesPage extends StatelessWidget {
  final logic = Get.find<MiPendientesLogic>();

  MiPendientesPage({Key? key}) : super(key: key);

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
                  const Text('MIS SUBASTAS PENDIENTES DE APROBACIÓN',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Text('Aquí podrás gestionar tus subastas',
                      style: TextStyle(fontSize: 12)),
                  const Divider(height: 20),
                  GetBuilder<MiPendientesLogic>(
                      id: 'misSubastas',
                      builder: (_) {
                        final subastas = _.subastaModel?.subasta;
                        return subastas != null
                            ? subastas.isNotEmpty
                                ? ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (___, index) =>
                                        ItemMiPendiente(
                                          subasta:subastas[index],
                                      width: width,
                                      voidCallback: () => null,
                                    ),
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
