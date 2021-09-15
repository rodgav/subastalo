import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/destacado1.dart';
import 'package:subastalo/app/global_widgets/destacado2.dart';
import 'package:subastalo/app/global_widgets/oferta_negociable.dart';
import 'package:subastalo/app/global_widgets/ultima_subasta.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 650,
            child: Stack(
              children: [
                Container(
                  height: 616,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/bgSlider.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 616,
                  margin: EdgeInsets.only(left: web ? 50 : 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('PROXIMA SUBASTA',
                          style: TextStyle(
                              color: ColorsUtils.white, fontSize: 26)),
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'LOTES DE AUTOS \n',
                              style: TextStyle(
                                  color: ColorsUtils.white, fontSize: 50)),
                          TextSpan(
                              text: 'Siniestrados y usados',
                              style: TextStyle(
                                  color: ColorsUtils.white, fontSize: 50)),
                        ]),
                      ),
                      SizedBox(height: 30),
                      Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text('28',
                              style: TextStyle(
                                  color: ColorsUtils.white, fontSize: 80)),
                          SizedBox(width: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'de \n',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 26)),
                              TextSpan(
                                  text: 'OCTUBRE',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 26)),
                            ]),
                          ),
                          SizedBox(width: 15),
                          web
                              ? Container(
                                  width: 3,
                                  height: 60,
                                  color: ColorsUtils.white)
                              : Divider(
                                  color: ColorsUtils.white,
                                ),
                          SizedBox(width: 15),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '3:30 pm \n',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 26)),
                              TextSpan(
                                  text: 'Lima - Perú',
                                  style: TextStyle(
                                      color: ColorsUtils.white, fontSize: 26)),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      ButtonWid(
                          width: 150,
                          height: 50,
                          color1: ColorsUtils.orange1,
                          color2: ColorsUtils.orange2,
                          textButt: 'Deseo participar')
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 75,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, right: 40, left: 20),
                    decoration: BoxDecoration(
                        color: ColorsUtils.orange1.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('US \$15,000',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 38)),
                        SizedBox(height: 10),
                        Text('precio base',
                            style: TextStyle(
                                color: ColorsUtils.white, fontSize: 34)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: web ? 50 : 20,
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorsUtils.orange1, shape: BoxShape.circle),
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () => null,
                          icon: Icon(
                            Icons.message,
                            color: ColorsUtils.white,
                          )),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10, left: web ? 50 : 20, right: web ? 50 : 20),
            child: Text(
              'OPORTUNIDADES DESTACADAS',
              style: TextStyle(color: ColorsUtils.blue3, fontSize: 35),
            ),
          ),
          Container(
            width: size.width,
            height: 460,
            margin: EdgeInsets.only(top: web ? 30 : 10, left: web ? 40 : 10),
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (_, index) => Destacado1(
                  color1: ColorsUtils.blue2,
                  color2: ColorsUtils.blue3,
                  textButt: 'Quiero negociar'),
              itemCount: 10,
            ),
          ),
          Container(
              width: size.width,
              height: 433,
              margin: EdgeInsets.only(top: web ? 30 : 10, left: web ? 40 : 10),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) => Destacado2(),
                itemCount: 10,
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10, left: web ? 50 : 20, right: web ? 50 : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Osinergim Perú',
                  style: TextStyle(color: ColorsUtils.blue3, fontSize: 35),
                ),
                Text(
                  'Ver todo',
                  style: TextStyle(color: ColorsUtils.grey1, fontSize: 28),
                ),
              ],
            ),
          ),
          Container(
              width: size.width,
              height: 440,
              margin: EdgeInsets.only(top: web ? 30 : 10, left: web ? 40 : 10),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) => Container(
                  width: 346,
                  margin: EdgeInsets.only(
                      top: 5, bottom: 5, right: web ? 50 : 10, left: 5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: ColorsUtils.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                            color: ColorsUtils.grey2.withOpacity(0.5),
                            offset: Offset(0, 2),
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'CAMIÓN  CHEVROLET KODIAK 240 MOD. 19994 SAK 172',
                        style:
                            TextStyle(color: ColorsUtils.blue3, fontSize: 20),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('VENDEDOR'), Text('HNOS. ASOCIADOS')],
                      ),
                      Container(
                        width: 346,
                        height: 170,
                        decoration: BoxDecoration(
                            color: ColorsUtils.grey1,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: ColorsUtils.grey1,
                                size: 15,
                              ),
                              Text('CIERRA Martes 03 de Nov.  |  3.00 pm',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.height,
                                color: ColorsUtils.blue3,
                                size: 15,
                              ),
                              Text('Disponible',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: ColorsUtils.blue3,
                                size: 15,
                              ),
                              Text('73 visitas',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                        ],
                      ),
                      ButtonWid(
                          width: 346,
                          height: 55,
                          color1: ColorsUtils.blue2,
                          color2: ColorsUtils.blue3,
                          textButt: 'Quiero negociar'),
                    ],
                  ),
                ),
                itemCount: 10,
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
                top: 10, left: web ? 50 : 20, right: web ? 50 : 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Buenaventura',
                  style: TextStyle(color: ColorsUtils.blue3, fontSize: 35),
                ),
                Text(
                  'Ver todo',
                  style: TextStyle(color: ColorsUtils.grey1, fontSize: 28),
                ),
              ],
            ),
          ),
          Container(
              width: size.width,
              height: 440,
              margin: EdgeInsets.only(top: web ? 30 : 10, left: web ? 40 : 10),
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) => Container(
                  width: 346,
                  margin: EdgeInsets.only(
                      top: 5, bottom: 5, right: web ? 50 : 10, left: 5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: ColorsUtils.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                            color: ColorsUtils.grey2.withOpacity(0.5),
                            offset: Offset(0, 2),
                            blurRadius: 5)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'CAMIÓN  CHEVROLET KODIAK 240 MOD. 19994 SAK 172',
                        style:
                            TextStyle(color: ColorsUtils.blue3, fontSize: 20),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('VENDEDOR'), Text('HNOS. ASOCIADOS')],
                      ),
                      Container(
                        width: 346,
                        height: 170,
                        decoration: BoxDecoration(
                            color: ColorsUtils.grey1,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: ColorsUtils.grey1,
                                size: 15,
                              ),
                              Text('CIERRA Martes 03 de Nov.  |  3.00 pm',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.height,
                                color: ColorsUtils.blue3,
                                size: 15,
                              ),
                              Text('Disponible',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: ColorsUtils.blue3,
                                size: 15,
                              ),
                              Text('73 visitas',
                                  style: TextStyle(
                                      fontSize: 9, color: ColorsUtils.grey1))
                            ],
                          ),
                        ],
                      ),
                      ButtonWid(
                          width: 346,
                          height: 55,
                          color1: ColorsUtils.blue2,
                          color2: ColorsUtils.blue3,
                          textButt: 'Quiero negociar'),
                    ],
                  ),
                ),
                itemCount: 10,
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width,
            color: Color(0xfff2f2f2),
            padding: EdgeInsets.all(web ? 50 : 20),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [OfertaNegociableWid(), UltimaSubastaWid()],
            ),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.all(web ? 50 : 20),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [],
            ),
          ),
        ],
      ),
    ));
  }
}
