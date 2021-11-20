import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/like.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubastaEmpresa extends StatelessWidget {
  final Subasta subasta;
  final double left;
  final double right;
  final VoidCallback voidCallback;

  const SubastaEmpresa(
      {Key? key,
      required this.subasta,
      this.left = 40,
      this.right = 50,
      required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: web ? size.width * 0.27 : size.width * 0.98,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: web ? left : 10),
      padding: EdgeInsets.all(web ? 20 : 10),
      decoration: BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: ColorsUtils.grey2.withOpacity(0.5),
                offset: const Offset(0, 2),
                blurRadius: 5)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: web ? size.width * 0.27 : size.width * 0.98,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  subasta.name,
                  style: const TextStyle(
                      color: ColorsUtils.blue3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            width: web ? size.width * 0.27 : size.width * 0.98,
            child: Align(alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(text: 'VENDEDOR '),
                  TextSpan(text: subasta.nameVendedor)
                ])),
              ),
            ),
          ),
          Container(
            width: web ? size.width * 0.20 : size.width * 0.90,
            height: 170,
            decoration: BoxDecoration(
                color: ColorsUtils.grey1,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(subasta.imagePrimary),
                    fit: BoxFit.cover)),
            child: const Like(left: 10, top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/calendario.png'),
                    color: ColorsUtils.grey1,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: web ? size.width * 0.05 : size.width * 0.4,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('CIERRA Martes 03 de Nov.  |  3.00 pm',
                          style:
                              TextStyle(fontSize: 9, color: ColorsUtils.grey1)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/martillo.png'),
                    color: ColorsUtils.blue3,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: web ? size.width * 0.02 : size.width * 0.2,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('Disponible',
                          style:
                              TextStyle(fontSize: 9, color: ColorsUtils.grey1)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/ojo.png'),
                    color: ColorsUtils.blue3,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: web ? size.width * 0.02 : size.width * 0.2,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('${subasta.views} visitas',
                          style: const TextStyle(
                              fontSize: 9, color: ColorsUtils.grey1)),
                    ),
                  )
                ],
              ),
            ],
          ),
          ButtonWid(
              width: 346,
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
