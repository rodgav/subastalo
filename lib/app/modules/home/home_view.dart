import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/destacado1.dart';
import 'package:subastalo/app/global_widgets/destacado2.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
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
                                          color: ColorsUtils.white,
                                          fontSize: 26)),
                                  TextSpan(
                                      text: 'OCTUBRE',
                                      style: TextStyle(
                                          color: ColorsUtils.white,
                                          fontSize: 26)),
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
                                          color: ColorsUtils.white,
                                          fontSize: 26)),
                                  TextSpan(
                                      text: 'Lima - Perú',
                                      style: TextStyle(
                                          color: ColorsUtils.white,
                                          fontSize: 26)),
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
                              color: ColorsUtils.orange1,
                              shape: BoxShape.circle),
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
              /*Container(
                width: size.width,
                margin: EdgeInsets.only(top: web ? 30 : 10,
                    right: web ? 40 : 10,
                    left: web ? 40 : 10),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceAround,
                  runAlignment: WrapAlignment.spaceAround,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Destacado1(
                        color1: ColorsUtils.blue2,
                        color2: ColorsUtils.blue3,
                        textButt: 'Quiero negociar'),
                    Destacado1(
                        color1: ColorsUtils.orange1,
                        color2: ColorsUtils.orange2,
                        textButt: 'Deseo participar'),
                    Destacado1(
                        color1: ColorsUtils.blue2,
                        color2: ColorsUtils.blue3,
                        textButt: 'Quiero negociar'),
                    Destacado1(
                        color1: ColorsUtils.orange1,
                        color2: ColorsUtils.orange2,
                        textButt: 'Deseo participar'),
                  ],
                ),
              ),*/ Container(
                width: size.width,
                height: 600,
                margin: EdgeInsets.only(top: web ? 30 : 10,
                    right: web ? 40 : 10,
                    left: web ? 40 : 10),
                child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (_, index) =>
                    Container(margin: EdgeInsets.only(right: 50), child:Destacado1(
                        color1: ColorsUtils.blue2,
                        color2: ColorsUtils.blue3,
                        textButt: 'Quiero negociar'),),
                  itemCount: 10,),
              ),
              Container(
                  width: size.width,
                  margin: EdgeInsets.only(top: web ? 40 : 20,
                      right: web ? 50 : 20,
                      left: web ? 50 : 20),
                  child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceAround,
                      runAlignment: WrapAlignment.spaceAround,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        Destacado2(),
                        Destacado2(),
                      ])),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 10, left: web ? 50 : 20, right: web ? 50 : 20),
                child: Text(
                  'Osinergim Perú',
                  style: TextStyle(color: ColorsUtils.blue3, fontSize: 35),
                ),
              ),
            ],
          ),
        ));
  }
}
