import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'root_logic.dart';

class RootPage extends StatelessWidget {
  RootPage({Key? key}) : super(key: key);

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
                    padding: const EdgeInsets.all(10),
                    width: size.width,
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.spaceEvenly,
                      runSpacing: 10,
                      children: [
                        MouseRegion(
                          child: GestureDetector(
                            child: SizedBox(
                              width: 216,
                              height: 48.33,
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            onTap: () => logic.toHome(current?.location),
                          ),
                        ),
                        MouseRegion(
                          child: DropdownButton(
                              underline: Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              hint: const Text('Nosotros'),
                              items: const [
                                DropdownMenuItem(child: Text('Nosotros',style: TextStyle(fontSize: 16)))
                              ]),
                          cursor: SystemMouseCursors.click,
                        ),
                        const MouseRegion(
                          child: Text('¿Cómo comprar?',style: TextStyle(fontSize: 16)),
                          cursor: SystemMouseCursors.click,
                        ),
                        const MouseRegion(
                          child: Text('Empieza a vender',style: TextStyle(fontSize: 16)),
                          cursor: SystemMouseCursors.click,
                        ),
                        Container(
                            width: 378,
                            margin: const EdgeInsets.symmetric(),
                            decoration: BoxDecoration(
                                color: ColorsUtils.grey1.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(100)),
                            child: TextField(
                              style: const TextStyle(fontStyle: FontStyle.italic),
                              decoration: InputDecoration(
                                suffixIcon: const Icon(Icons.search,
                                    size: 24, color: ColorsUtils.blue3),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Busca productos en ASP SUBASTAS',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils.grey1.withOpacity(0.2),
                                      width: 0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils.grey1.withOpacity(0.2),
                                      width: 0),
                                ),
                              ),
                            )),
                        const MouseRegion(
                          child: Text('Unirse hoy'),
                          cursor: SystemMouseCursors.click,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: ColorsUtils.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                side:
                                    const BorderSide(color: ColorsUtils.blue1),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                elevation: 0),
                            onPressed: () => null,
                            child: const Text(
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
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(gradient: LinearGradient(
                        colors: [ColorsUtils.blue3, ColorsUtils.blue4]
                    )),
                    child: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.spaceAround,
                      runSpacing: 10,
                      children: [
                        Container(
                          width: (size.width * 0.15),
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: ColorsUtils.white))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Subastas Realizadas',
                                style: TextStyle(
                                    fontSize: 16, color: ColorsUtils.white),
                              ),
                              Text(
                                '7633',
                                style: TextStyle(
                                    fontSize: 59, color: ColorsUtils.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
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
                                          SizedBox(
                                            height: 35,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.event,
                                                  color: ColorsUtils.orange1,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 154,
                                                  decoration: BoxDecoration(
                                                      color: ColorsUtils.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 5,
                                                      horizontal: 15),
                                                  child: DropdownButton(
                                                      isExpanded: true,
                                                      underline: Container(
                                                        height: 0,
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Text(
                                                          'Vehículos',
                                                          style: TextStyle(
                                                              color: ColorsUtils
                                                                  .black),
                                                        ))
                                                      ]),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.event,
                                                  color: ColorsUtils.orange1,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 154,
                                                  decoration: BoxDecoration(
                                                      color: ColorsUtils.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 5,
                                                      horizontal: 15),
                                                  child: DropdownButton(
                                                      isExpanded: true,
                                                      underline: Container(
                                                        height: 0,
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Text(
                                                          'Vehículos',
                                                          style: TextStyle(
                                                              color: ColorsUtils
                                                                  .black),
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
                  )
                : Container(),
            Expanded(child: GetRouterOutlet(initialRoute: Routes.home))
          ],
        ),
      );
    });
  }
}
