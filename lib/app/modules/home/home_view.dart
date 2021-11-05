import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/global_widgets/categoria.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/app/modules/home/widgets_home/drawer_categorys.dart';
import 'package:subastalo/app/modules/home/widgets_home/drawer_home.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 1500;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
          key: logic.scaffoldKeyHome,
          drawer: web ? null : const DrawerCategorys(),
          endDrawer: web ? null : const DrawerHome(),
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
                              DropdownMenuItem<String>(
                                  child: Text('Nosotros',
                                      style: TextStyle(fontSize: 16)))
                            ],
                            onChanged: (value) => null,
                          ),
                          const MouseRegion(
                            child: Text('¿Cómo comprar?',
                                style: TextStyle(fontSize: 16)),
                            cursor: SystemMouseCursors.click,
                          ),
                          MouseRegion(
                            child: GestureDetector(
                              child: const Text('Empieza a vender',
                                  style: TextStyle(fontSize: 16)),
                              onTap: logic.toVender,
                            ),
                            cursor: SystemMouseCursors.click,
                          ),
                          TxtFieldCirWid(
                              width: 378,
                              hint: 'Busca productos en SUBASTALO',
                              color: ColorsUtils.grey1.withOpacity(0.2),
                              suffix: true),
                          AuthService.to.isLoggedIn
                              ? const Icon(Icons.message)
                              : const MouseRegion(
                                  child: Text('Unirse hoy'),
                                  cursor: SystemMouseCursors.click,
                                ),
                          AuthService.to.isLoggedIn
                              ? const Text('Jhonatan')
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: ColorsUtils.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      side: const BorderSide(
                                          color: ColorsUtils.blue1),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      elevation: 0),
                                  onPressed: logic.toLogin,
                                  child: const Text(
                                    'Inicia Sesión',
                                    style: TextStyle(color: ColorsUtils.blue3),
                                  )),
                          AuthService.to.isLoggedIn
                              ? MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: ColorsUtils.grey1
                                                .withOpacity(0.2),
                                            shape: BoxShape.circle),
                                        child: const Icon(Icons.image)),
                                    onTap: logic.toDashboard,
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                    )
                  : AppBar(
                      backgroundColor: ColorsUtils.white,
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
                      centerTitle: true,
                      actions: [
                          IconButton(
                              onPressed: () => logic
                                  .scaffoldKeyHome.currentState!
                                  .openEndDrawer(),
                              icon: const Icon(
                                Icons.menu,
                                color: ColorsUtils.blue3,
                              ))
                        ]),
              web
                  ? Container(
                      width: size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [ColorsUtils.blue3, ColorsUtils.blue4])),
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
                                    right:
                                        BorderSide(color: ColorsUtils.white))),
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
                          GetBuilder<HomeLogic>(
                              id: 'categorias',
                              builder: (_) {
                                final categorias =
                                    _.categoriasModel?.categorias;
                                return categorias != null
                                    ? Container(
                                        width: (size.width * 0.85) - 40,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Wrap(
                                          alignment: WrapAlignment.spaceAround,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          runAlignment:
                                              WrapAlignment.spaceAround,
                                          spacing: 20,
                                          runSpacing: 20,
                                          children: categorias.isNotEmpty
                                              ? [
                                                  CategoriaWid(
                                                      categoria: categorias[0]),
                                                  CategoriaWid(
                                                      categoria: categorias[1]),
                                                  CategoriaWid(
                                                      categoria: categorias[2]),
                                                  CategoriaWid(
                                                      categoria: categorias[3]),
                                                  CategoriaWid(
                                                      categoria: categorias[4]),
                                                  CategoriaWid(
                                                      categoria: categorias[5]),
                                                  CategoriaWid(
                                                      categoria: categorias[6]),
                                                  CategoriaWid(
                                                      categoria: categorias[7]),
                                                  CategoriaWid(
                                                      categoria: categorias[8]),
                                                  CategoriaWid(
                                                      categoria: categorias[9]),
                                                ]
                                              : [const NoDataWid()],
                                        ))
                                    : const Center(child: LoadingWid());
                              })
                        ],
                      ),
                    )
                  : Container(),
              Expanded(
                child: GetRouterOutlet(
                    initialRoute: Routes.subastas,
                    key: Get.nestedKey(Routes.home)),
              ),
            ],
          ));
    });
  }
}
