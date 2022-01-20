import 'dart:math';

import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/global_widgets/button_icon_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/constants.dart';

class TBloqueada extends StatelessWidget {
  final Subasta subasta;
  final double width;

  const TBloqueada({Key? key, required this.subasta, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;int random = Random().nextInt(10);
    return Container(
      width: width,
      decoration: BoxDecoration(
          //color: ColorsUtils.grey1.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
                width: 258,
                height: 124,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    '${urlImageConst}image$random-${subasta.id}.png',
                    fit: BoxFit.cover,
                    loadingBuilder: (_, child, loading) => loading == null
                        ? child
                        : const Center(
                      child: SizedBox(
                          width: 50, height: 50, child: LoadingWid()),
                    ),
                    errorBuilder: (_, __, ___) =>
                    const Center(child: NoDataWid()),
                  ),
                )),
            SizedBox(
              width: 258,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '2008 CHEVROLET SILVERADO K2500 HEAVY DUTY',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: ColorsUtils.blue3),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          subasta.idStateSubasta == 1
                              ? Icons.check
                              : subasta.idStateSubasta == 2
                              ? Icons.error
                              : Icons.close,
                          size: 18,
                          color: subasta.idStateSubasta == 1
                              ? ColorsUtils.orange1
                              : subasta.idStateSubasta == 2
                              ? ColorsUtils.green
                              : ColorsUtils.red),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        subasta.idStateSubasta == 1
                            ? 'Pendiente'
                            : subasta.idStateSubasta == 2
                            ? 'Aprobada'
                            : 'Bloqueada',
                        style: TextStyle(
                            fontSize: 12,
                            color: subasta.idStateSubasta == 1
                                ? ColorsUtils.orange1
                                : subasta.idStateSubasta == 2
                                ? ColorsUtils.green
                                : ColorsUtils.red),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: web ? 50 : 0),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ButtonIconWid(
                    width: 153,
                    height: 40,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    assetIcon: 'assets/icons/buscar.png',
                    textButt: 'Ver detalles',
                    voidCallback: () => null),
                const SizedBox(width: 10),
                ButtonIconWid(
                    width: 153,
                    height: 40,
                    color1: ColorsUtils.green,
                    color2: ColorsUtils.green,
                    assetIcon: 'assets/icons/buscar.png',
                    textButt: 'Desbloquear',
                    voidCallback: () => null),
                ButtonIconWid(
                    width: 153,
                    height: 40,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    assetIcon: 'assets/icons/buscar.png',
                    textButt: 'Editar',
                    voidCallback: () => null),
                ButtonIconWid(
                    width: 153,
                    height: 40,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    assetIcon: 'assets/icons/buscar.png',
                    textButt: 'Eliminar',
                    voidCallback: () => null),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
