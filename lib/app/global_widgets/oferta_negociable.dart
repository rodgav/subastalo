import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class OfertaNegociableWid extends StatelessWidget {
  final VoidCallback voidCallback;

  const OfertaNegociableWid({Key? key, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return SizedBox(
      width: web ? size.width * 0.45 : size.width,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/icons/porcentaje.png', width: 78, height: 78),
              const SizedBox(width: 20),
              const Text(
                'OFERTAS \nNEGOCIABLES',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: web ? size.width * 0.45 : size.width,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: ColorsUtils.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: ColorsUtils.grey1.withOpacity(0.5), blurRadius: 7)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            SizedBox(
            width: web ? size.width * 0.21 : size.width * 0.42,
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: SizedBox(
                        width: web ? size.width * 0.21 : size.width * 0.42,
                        child: const Text(
                          'Miles de productos',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 28),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: SizedBox(
                        width: web ? size.width * 0.21 : size.width * 0.42,
                        child: const Text(
                          'Accede a todas las ofertas con precios negociables',
                          style: TextStyle(
                              color: ColorsUtils.orange2,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: SizedBox(
                        width: web ? size.width * 0.21 : size.width * 0.42,
                        child: const Text(
                          'Texto de ayuda',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 28),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: SizedBox(
                        width: web ? size.width * 0.21 : size.width * 0.42,
                        child: const Text(
                          'Categoria 1, Categoria 2, Categoria 3, '
                          'Categoria 4, Categoria 5, Categoria 6 ',
                          style:
                              TextStyle(color: ColorsUtils.blue3, fontSize: 16),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),),
                SizedBox(
                  width: web ? size.width * 0.2 : size.width * 0.35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/icons/bolsa.png',
                          width: web ? size.width * 0.17 : size.width * 0.32,
                          height: 180),
                      ButtonWid(
                          width: web ? size.width * 0.17 : size.width * 0.32,
                          height: 50,
                          color1: ColorsUtils.orange1,
                          color2: ColorsUtils.orange2,
                          textButt: 'VISITAR',
                          voidCallback: voidCallback)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
