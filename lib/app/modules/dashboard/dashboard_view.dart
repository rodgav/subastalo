import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/dashboard/widgets_dashboard/drawer_widget.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'dashboard_logic.dart';

class DashBoardPage extends StatelessWidget {
  DashBoardPage({Key? key}) : super(key: key);
  final logic = Get.find<DashboardLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
          body: Column(children: [
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
                            DropdownMenuItem(
                                child: Text('Nosotros',
                                    style: TextStyle(fontSize: 16)))
                          ]),
                      cursor: SystemMouseCursors.click,
                    ),
                    const MouseRegion(
                      child: Text('¿Cómo comprar?',
                          style: TextStyle(fontSize: 16)),
                      cursor: SystemMouseCursors.click,
                    ),
                    const MouseRegion(
                      child: Text('Empieza a vender',
                          style: TextStyle(fontSize: 16)),
                      cursor: SystemMouseCursors.click,
                    ),
                    TxtFieldCirWid(
                        width: 378,
                        hint: 'Busca productos en SUBASTALO',
                        color: ColorsUtils.grey1.withOpacity(0.2),
                        suffix: true),
                    const MouseRegion(
                      child: Text('Unirse hoy'),
                      cursor: SystemMouseCursors.click,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: ColorsUtils.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            side: const BorderSide(color: ColorsUtils.blue1),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            elevation: 0),
                        onPressed: () {},
                        child: const Text(
                          'Inicia Sesión',
                          style: TextStyle(color: ColorsUtils.blue3),
                        )),
                  ],
                ),
              )
            : Container(),
        Expanded(
          child: Row(children: [
         const   DrawerWid(),
            Expanded(
              child: GetRouterOutlet(
                  initialRoute: Routes.tablero, key: Get.nestedKey(Routes.dashboard)),
            ),
          ]),
        )
      ]));
    });
  }
}
