import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/modules/mi_subasta/mi_subasta_widget/item_mi_subasta.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mi_subasta_logic.dart';

class MiSubastaPage extends StatelessWidget {
  const MiSubastaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetBuilder<MiSubastaLogic>(builder: (_) {
      return LayoutBuilder(builder: (__, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: web ? 50 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      alignment: web
                          ? WrapAlignment.spaceBetween
                          : WrapAlignment.center,
                      runAlignment: web
                          ? WrapAlignment.spaceBetween
                          : WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('PÁGINAS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('Aquí podrás gestionar tus páginas',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        ButtonWid(
                            width: 186,
                            height: 40,
                            color1: ColorsUtils.blueButt1,
                            color2: ColorsUtils.blueButt2,
                            textButt: 'Crear nueva subasta',
                            voidCallback: () => _.newSubasta(size))
                      ],
                    ),
                    const Divider(height: 20),
                    GetBuilder<MiSubastaLogic>(
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
                                          ItemMiSubasta(
                                        subasta: subastas[index],
                                        width: width,
                                        voidCallback: () =>
                                            _.toMiSubastaDetail(subastas[index].id.toString()),
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
    });
  }
}
