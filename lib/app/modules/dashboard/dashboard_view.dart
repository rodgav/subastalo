import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/global_widgets/footer_dashboard.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/dashboard/widgets_dashboard/drawer_home.dart';
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
    final bool web = size.width > 1500;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
          key: logic.scaffoldKeyHome,
          drawer: web ? null : const DrawerWid(),
          endDrawer: web ? null : const DrawerHome(),
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
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            child: SizedBox(
                              width: 216,
                              height: 48.33,
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            onTap: () => logic.toHome(current?.location),
                          ),
                        ),
                        DropdownButton<String>(
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          hint: const Text('Nosotros'),
                          items: const [
                            DropdownMenuItem(
                                child: Text('Nosotros',
                                    style: TextStyle(fontSize: 16)))
                          ],
                          onChanged: (value) => null,
                        ),
                        const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text('¿Cómo comprar?',
                              style: TextStyle(fontSize: 16)),
                        ),
                        const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text('Empieza a vender',
                              style: TextStyle(fontSize: 16)),
                        ),
                        TxtFieldCirWid(
                            width: 378,
                            hint: 'Busca productos en SUBASTALO',
                            color: ColorsUtils.grey1.withOpacity(0.2),
                            suffix: true,editingController: logic.search,
                            onSubmitted: logic.subastaSearch),
                        ImageIcon(const AssetImage('assets/icons/mensaje.png'),
                            color: ColorsUtils.grey1.withOpacity(0.5)),
                        Container(
                            padding: const EdgeInsets.only(bottom: 2),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: ColorsUtils.blue3, width: 5))),
                            child: Text(AuthService.to.name)),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: ColorsUtils.grey1.withOpacity(0.5),
                                shape: BoxShape.circle),
                            child: const ImageIcon(
                                AssetImage('assets/icons/imagen.png'),
                                color: ColorsUtils.white,
                                size: 15))
                      ],
                    ),
                  )
                : AppBar(
                    backgroundColor: ColorsUtils.white,
                    centerTitle: true,
                    leading: IconButton(
                        onPressed: () =>
                            logic.scaffoldKeyHome.currentState!.openDrawer(),
                        icon: const Icon(
                          Icons.menu,
                          color: ColorsUtils.blue3,
                        )),
                    title: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: SizedBox(
                          width: 216,
                          height: 48.33,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                        onTap: () => logic.toHome(current?.location),
                      ),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () => logic.scaffoldKeyHome.currentState!
                              .openEndDrawer(),
                          icon: const Icon(
                            Icons.menu,
                            color: ColorsUtils.blue3,
                          ))
                    ],
                  ),
            Expanded(
              child: Row(children: [
                web ? const DrawerWid() : const SizedBox(),
                Expanded(
                  child: GetRouterOutlet(
                      initialRoute: Routes.tablero,
                      key: Get.nestedKey(Routes.dashboard)),
                ),
              ]),
            ),
            const FooterDashboard()
          ]));
    });
  }
}
