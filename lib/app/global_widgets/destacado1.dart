import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/like.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Destacado1 extends StatelessWidget {
  final Subasta subasta;
  final VoidCallback voidCallback;

  const Destacado1(
      {Key? key, required this.subasta, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: 300,
      height: 450,
      margin: EdgeInsets.only(left:  web?40:10, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey2.withOpacity(0.5),
                offset: const Offset(0, 2),
                blurRadius: 5)
          ]),
      child: Container(
        width: 300,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              subasta.name,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w900),
              textAlign: TextAlign.justify,
            ),
            Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(subasta.imagePrimary),
                      fit: BoxFit.cover,
                    )),
                child: const Like(right: 10, top: 10)),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'VENDEDOR',
                  style: TextStyle(fontSize: 9),
                ),
                Text(
                  subasta.nameVendedor,
                  style: const TextStyle(fontSize: 9),
                ),
              ],
            ),
            const Divider(
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImageIcon(
                  const AssetImage('assets/icons/martillo.png'),
                  color: subasta.type == 'Vivo'
                      ? ColorsUtils.orange2
                      : ColorsUtils.blue3,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  'Abierto para negociaciones',
                  style: TextStyle(
                      color: subasta.type == 'Vivo'
                          ? ColorsUtils.orange2
                          : ColorsUtils.blue3,
                      fontSize: 8),
                )
              ],
            ),
            Column(
              children: const [
                Text('Esta oferta negociable se cierra el',
                    style: TextStyle(fontSize: 10)),
                Text('Miercoles 28 de Oct. | 8:00 PM',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
            ButtonWid(
                width: 200,
                height: 50,
                color1: subasta.type == 'Vivo'
                    ? ColorsUtils.orange1
                    : ColorsUtils.blueButt1,
                color2: subasta.type == 'Vivo'
                    ? ColorsUtils.orange2
                    : ColorsUtils.blueButt2,
                textButt: subasta.type == 'Vivo'
                    ? 'Deseo participar'
                    : 'Quiero negociar',
                voidCallback: voidCallback),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: ColorsUtils.grey1.withOpacity(0.5))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/ojo.png'),
                    color: ColorsUtils.blue3,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${subasta.views} visitantes',
                    style: const TextStyle(
                      color: ColorsUtils.blue3,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
