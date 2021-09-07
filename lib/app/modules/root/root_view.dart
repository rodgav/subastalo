import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'root_logic.dart';

class RootPage extends StatelessWidget {
  final logic = Get.find<RootLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      debugPrint('title ${current?.location}');
      return Scaffold(
        body: Column(
          children: [
            web
                ? Container(
                    padding: EdgeInsets.all(10),
                    width: size.width,
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.spaceAround,
                      runSpacing: 10,
                      children: [
                        MouseRegion(
                          child: Container(
                            width: 216,
                            height: 48.33,
                            child: Image.asset('assets/images/logo.png'),
                          ),
                        ),
                        MouseRegion(
                          child: DropdownButton(
                              underline: Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              hint: Text('Nosotros'),
                              items: [
                                DropdownMenuItem(child: Text('Nosotros'))
                              ]),
                          cursor: SystemMouseCursors.click,
                        ),
                        MouseRegion(
                          child: Text('¿Cómo comprar?'),
                          cursor: SystemMouseCursors.click,
                        ),
                        MouseRegion(
                          child: Text('Empieza a vender'),
                          cursor: SystemMouseCursors.click,
                        ),
                        Container(
                            width: 378,
                            margin: EdgeInsets.symmetric(),
                            decoration: BoxDecoration(
                                color: ColorsUtils.grey1.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100)),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search,
                                    size: 24, color: ColorsUtils.blue3),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                hintText: 'Busca productos en ASP SUBASTAS',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils.grey1.withOpacity(0.2),
                                      width: 0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.0)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils.grey1.withOpacity(0.2),
                                      width: 0),
                                ),
                              ),
                            )),
                        MouseRegion(
                          child: Text('Unirse hoy'),
                          cursor: SystemMouseCursors.click,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: ColorsUtils.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                side: BorderSide(color: ColorsUtils.blue1),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                elevation: 0),
                            onPressed: () => null,
                            child: Text(
                              'Inicia Sesión',
                              style: TextStyle(color: ColorsUtils.blue3),
                            )),
                      ],
                    ),
                  )
                : Container(),
            web
                ? Container(
              width: size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: ColorsUtils.blue3),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceAround,
                runSpacing: 10,
                children: [
                  Container(
                    width: (size.width * 0.15),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: ColorsUtils.white))),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Subastas Realizadas',
                          style:
                              TextStyle(fontSize: 16, color: ColorsUtils.white),
                        ),
                        Text(
                          '7633',
                          style:
                              TextStyle(fontSize: 59, color: ColorsUtils.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: (size.width * 0.85) - 40,
                      child: Wrap(
                        alignment: WrapAlignment.spaceAround,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.spaceAround,
                        runSpacing: 10,
                        children: List.generate(
                            5,
                            (index) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 35,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.event,
                                            color: ColorsUtils.orange1,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 154,
                                            decoration: BoxDecoration(
                                                color: ColorsUtils.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 15),
                                            child: DropdownButton(
                                                isExpanded: true,
                                                underline: Container(
                                                  height: 0,
                                                  color: Colors.transparent,
                                                ),
                                                items: [
                                                  DropdownMenuItem(
                                                      child: Text(
                                                    'Vehículos',
                                                    style: TextStyle(
                                                        color:
                                                            ColorsUtils.black),
                                                  ))
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 35,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.event,
                                            color: ColorsUtils.orange1,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 154,
                                            decoration: BoxDecoration(
                                                color: ColorsUtils.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 15),
                                            child: DropdownButton(
                                                isExpanded: true,
                                                underline: Container(
                                                  height: 0,
                                                  color: Colors.transparent,
                                                ),
                                                items: [
                                                  DropdownMenuItem(
                                                      child: Text(
                                                    'Vehículos',
                                                    style: TextStyle(
                                                        color:
                                                            ColorsUtils.black),
                                                  ))
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                      ))
                ],
              ),
            ): Container(),
            Expanded(child: GetRouterOutlet(initialRoute: Routes.HOME))
          ],
        ),
      );
    });
  }
}
