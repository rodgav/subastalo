import 'package:flutter/material.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/utils/colors_utils.dart';

class Destacado1 extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String textButt;

  const Destacado1(
      {Key? key,
      required this.color1,
      required this.color2,
      required this.textButt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Container(
      width: 300,
      height: 450,
      margin: EdgeInsets.only(right: web?50:10,left: 5,top: 5,bottom: 5),
      decoration: BoxDecoration(
          color: ColorsUtils.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: ColorsUtils.grey2.withOpacity(0.5), offset: Offset(0, 2),blurRadius:5)
          ]),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                color: ColorsUtils.grey1,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
          ),
          Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '2008 CHEVROLET SILVERADO K2500 HEAVY DUTY',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'VENDEDOR',
                      style: TextStyle(fontSize: 9),
                    ),
                    Text(
                      'SUBASTA - HNS ASOCIADOS',
                      style: TextStyle(fontSize: 9),
                    ),
                  ],
                ),
                Divider(
                  color: ColorsUtils.grey2,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.print,
                      color: color2,
                      size: 20,
                    ),
                    Text(
                      'Abierto para negociaciones',
                      style: TextStyle(color: color2, fontSize: 8),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('Esta oferta negociable se cierra el',
                        style: TextStyle(fontSize: 10)),
                    Text('Miercoles 28 de Oct. | 8:00 PM',
                        style: TextStyle(fontSize: 12)),
                  ],
                ),
                ButtonWid(width: 200,height: 50,color1: color1, color2: color2, textButt: textButt),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorsUtils.grey1)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: ColorsUtils.blue3,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '89 visitantes',
                        style: TextStyle(
                          color: ColorsUtils.blue3,
                        ),
                      )
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
