import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_icon_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class ItemMiPendiente extends StatelessWidget {
  final double width;
  final VoidCallback voidCallback;

  const ItemMiPendiente(
      {Key? key, required this.width, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
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
            Container(
              width: 258,
              height: 124,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/chevrolet.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
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
                    children: const [
                      Icon(Icons.location_pin,
                          size: 18, color: ColorsUtils.grey1),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Aoa eastern Alister Samoa',
                        style:
                            TextStyle(fontSize: 12, color: ColorsUtils.grey1),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.location_pin,
                          size: 18, color: ColorsUtils.grey1),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Aoa eastern Alister Samoa',
                        style:
                            TextStyle(fontSize: 12, color: ColorsUtils.grey1),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.check, size: 18, color: ColorsUtils.orange1),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Pendiente de aprobación',
                        style:
                            TextStyle(fontSize: 12, color: ColorsUtils.orange1),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: web ? 50 : 0),
            Column(
              children: [
                SizedBox(
                  height: web ?60: 20,
                ),
                Wrap(
                  runSpacing: 10,
                  children: [
                    ButtonIconWid(
                        width: 153,
                        height: 40,
                        color1: ColorsUtils.blueButt1,
                        color2: ColorsUtils.blueButt2,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Editar',
                        voidCallback: () => null),
                    const SizedBox(width: 10),
                    ButtonIconWid(
                        width: 153,
                        height: 40,
                        color1: ColorsUtils.blueButt1,
                        color2: ColorsUtils.blueButt2,
                        assetIcon: 'assets/icons/buscar.png',
                        textButt: 'Eliminar',
                        voidCallback: () => null),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
