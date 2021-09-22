import 'package:flutter/material.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/like.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubastaEmpresa extends StatelessWidget {
  final Subasta subasta;
  final VoidCallback voidCallback;

  const SubastaEmpresa(
      {Key? key, required this.subasta, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: 420,
      margin: EdgeInsets.only(top: 5, bottom: 5, right: web ? 50 : 10, left: 5),
      padding: const EdgeInsets.all(20),
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
          Text(
            subasta.name,
            style: const TextStyle(
                color: ColorsUtils.blue3,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('VENDEDOR'), Text(subasta.nameVendedor)],
          ),
          Container(
            width: 346,
            height: 170,
            decoration: BoxDecoration(
                color: ColorsUtils.grey1,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(subasta.imagePrimary),
                    fit: BoxFit.cover)),
            child: const Like(left: 10,top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ImageIcon(
                    AssetImage('assets/icons/calendario.png'),
                    color: ColorsUtils.grey1,
                    size: 15,
                  ),   SizedBox(width: 3,),
                  Text('CIERRA Martes 03 de Nov.  |  3.00 pm',
                      style: TextStyle(fontSize: 9, color: ColorsUtils.grey1))
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ImageIcon(
                    AssetImage('assets/icons/negociar.png'),
                    color: ColorsUtils.blue3,
                    size: 15,
                  ),
                  SizedBox(width: 3,),
                  Text('Disponible',
                      style: TextStyle(fontSize: 9, color: ColorsUtils.grey1))
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/ojo.png'),
                    color: ColorsUtils.blue3,
                    size: 15,
                  ),   SizedBox(width: 3,),
                  Text('${subasta.views} visitas',
                      style: const TextStyle(
                          fontSize: 9, color: ColorsUtils.grey1))
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
