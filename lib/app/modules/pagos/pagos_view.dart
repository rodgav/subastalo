import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_icon_rigth_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'pagos_logic.dart';

class PagosPage extends StatelessWidget {
  final logic = Get.find<PagosLogic>();

  PagosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('PAGOS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Aquí podrás gestionar los pagos',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                const Divider(height: 20),
                GetBuilder<PagosLogic>(
                    id: 'pagos',
                    builder: (_) {
                      final pagos = _.pagoModel?.pago;
                      return pagos != null
                          ? pagos.isNotEmpty
                              ? ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (_, index) {
                                    final pago = pagos[index];
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF1F1F1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: const EdgeInsets.all(20),
                                      width: width,
                                      child: Wrap(
                                        alignment: WrapAlignment.spaceBetween,
                                        runAlignment:
                                            WrapAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/buscar.png',
                                            width: 124,
                                            height: 95,
                                          ),
                                          SizedBox(
                                            width: width / 6,
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: pago.idTypePay == 1
                                                      ? 'YAPE\n'
                                                      : pago.idTypePay == 2
                                                          ? 'PLIN\n'
                                                          : 'Transferencia\n',
                                                  style: const TextStyle(
                                                      color: ColorsUtils.blue3,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)) ,
                                                  TextSpan(
                                                  text: pago.idStatePay == 1
                                                      ? 'Pendiente'
                                                      : pago.idStatePay == 2
                                                          ? 'Aprobado'
                                                          : 'Rechazado',
                                                  style: const TextStyle(
                                                      color: ColorsUtils.blue3,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12))
                                            ])),
                                          ),
                                          SizedBox(
                                            width: width / 6,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(children: [
                                                  const TextSpan(
                                                      text: 'Fecha Inicio: ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12)),
                                                  TextSpan(
                                                      text: pago.createdAt
                                                          .toString()
                                                          .substring(0, 10),
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                ])),
                                                const SizedBox(height: 20),
                                                RichText(
                                                    text: TextSpan(children: [
                                                  const TextSpan(
                                                      text: 'Fecha Fin: ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12)),
                                                  TextSpan(
                                                      text: pago.updatedAt
                                                          .toString()
                                                          .substring(0, 10),
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                ]))
                                              ],
                                            ),
                                          ),
                                          ButtonIconRWid(
                                              width: 120,
                                              height: 40,
                                              color1: ColorsUtils.blue3,
                                              color2: ColorsUtils.blue3,
                                              assetIcon:
                                                  'assets/icons/buscar.png',
                                              textButt: 'Aprobar',
                                              voidCallback: () => null),  ButtonIconRWid(
                                              width: 120,
                                              height: 40,
                                              color1: ColorsUtils.blue3,
                                              color2: ColorsUtils.blue3,
                                              assetIcon:
                                                  'assets/icons/buscar.png',
                                              textButt: 'Rechazar',
                                              voidCallback: () => null),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: pagos.length,
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const SizedBox(height: 10),
                                )
                              : const NoDataWid()
                          : const LoadingWid();
                    })
              ],
            ),
          ),
        );
      },
    );
  }
}
