import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CardNameSubDet extends StatelessWidget {
  final Subasta subasta;

  const CardNameSubDet({Key? key, required this.subasta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
        width: web ? size.width * 0.5 : size.width,
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
              crossAxisAlignment:
                  web ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: web ? size.width * 0.5 : size.width,
                  child: Align(alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,child: Text(
                        'Vende - ${subasta.nameVendedor}',
                        style:
                            const TextStyle(fontSize: 20, color: ColorsUtils.blue3),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.home,
                        color: ColorsUtils.orange2, size: 24),
                    const SizedBox(width: 5),
                    Text(
                      'Vendedor ${subasta.stateVendedor}',
                      style: const TextStyle(
                          color: ColorsUtils.orange2, fontSize: 13),
                    )
                  ],
                ),
            SizedBox(width: web ? size.width * 0.5 : size.width,
              child: FittedBox(
                fit: BoxFit.scaleDown,child: Text(
                    subasta.name,
                    style: const TextStyle(
                        fontSize: 25,
                        color: ColorsUtils.blue3,
                        fontWeight: FontWeight.bold),
                  )),
            )
              ],
            ));
  }
}
