import 'dart:math';

import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/like.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/constants.dart';

class SubastaUsuario extends StatelessWidget {
  final Subasta subasta;
  final double left;
  final double right;
  final VoidCallback voidCallback;

  const SubastaUsuario(
      {Key? key,
        required this.subasta,
        this.left = 40,
        this.right = 50,
        required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800; int random = Random().nextInt(10);
    return Container(
      width: 258,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: web ? left : 10),
      padding: const EdgeInsets.all( 10),
      decoration: BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey2.withOpacity(0.5),
                offset: const Offset(0, 2),
                blurRadius: 5)
          ]),
      child: Column(mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 258,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  subasta.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          const Divider(),
          SizedBox(
              width: 258,
              height: 170,
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
              ),),
          SizedBox(
              width: 258,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                    text:  TextSpan(children: [
                      const  WidgetSpan(
                          child: ImageIcon(
                            AssetImage('assets/icons/calendario.png'),
                            color: ColorsUtils.grey1,
                            size: 14,
                          )),
                      const TextSpan(
                          text: ' CIERRA Martes 03 de Nov.  |  3.00 pm ',
                          style:
                          TextStyle(fontSize: 14, color: ColorsUtils.grey1)),
                      const WidgetSpan(
                          child: ImageIcon(
                            AssetImage('assets/icons/ojo.png'),
                            color: ColorsUtils.grey1,
                            size: 14,
                          )),
                      TextSpan(
                          text: ' ${subasta.views} visitas',
                          style:
                          const  TextStyle(fontSize: 14, color: ColorsUtils.grey1)),

                    ])),
              )),
          ButtonWid(
              width: 258,
              height: 55,
              color1: ColorsUtils.blueButt1,
              color2: ColorsUtils.blueButt2,
              textButt: 'Quiero negociar',
              voidCallback: voidCallback),
        ],
      ),
    );
  }
}
