import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';
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
        children: [
          Container(
            width: size.width,
            height: 616,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bgSlider.png',
                    ),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
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
                        web?  Container(
                              width: 3, height: 60, color: ColorsUtils.white):Divider(color: ColorsUtils.white,),
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        onPressed: () => null,
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    ColorsUtils.orange1,
                                    ColorsUtils.orange2
                                  ]),
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 35),
                            child: Text(
                              'Deseo participar',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 75,
                  child: Container(
                    padding: EdgeInsets.only(top: 20,bottom: 20, right: 40,left: 20),
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
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
