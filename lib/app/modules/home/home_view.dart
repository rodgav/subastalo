import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/global_widgets/categoria.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/app/modules/home/widgets_home/drawer_home.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final logic = Get.find<HomeLogic>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
          key: logic.scaffoldKeyHome,
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
                              width: 200,
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
                      automaticallyImplyLeading: false,
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
              Container(
                width: size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [ColorsUtils.blue3, ColorsUtils.blue4])),
                child: Row(
                  children: [
                    Container(
                        width: web ? size.width * 0.1 : size.width * 0.3,
                        height: 100,
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: ColorsUtils.white))),
                        child: Column(
                          children: [
                            Container(
                              width: web ? size.width * 0.15 : size.width * 0.3,
                              height: 40,
                              padding: const EdgeInsets.all(2.5),
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Subastas Realizadas\n',
                                  style: TextStyle(color: ColorsUtils.white),
                                ),
                              ),
                            ),
                            Container(
                              width: web ? size.width * 0.15 : size.width * 0.3,
                              height: 60,
                              padding: const EdgeInsets.all(2.5),
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  '7633',
                                  style: TextStyle(color: ColorsUtils.white),
                                ),
                              ),
                            )
                          ],
                        )),
                    Expanded(
                      child: GetBuilder<HomeLogic>(
                          id: 'categorias',
                          builder: (_) {
                            final categorias = _.categoriasModel?.categorias;
                            return categorias != null
                                ? SizedBox(
                                    height: 37,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      children: [
                                        CategoriaWid(categoria: categorias[0]),
                                        CategoriaWid(categoria: categorias[1]),
                                        CategoriaWid(categoria: categorias[2]),
                                        CategoriaWid(categoria: categorias[3]),
                                        CategoriaWid(categoria: categorias[4]),
                                        CategoriaWid(categoria: categorias[5]),
                                        CategoriaWid(categoria: categorias[6]),
                                        CategoriaWid(categoria: categorias[7]),
                                        CategoriaWid(categoria: categorias[8]),
                                        CategoriaWid(categoria: categorias[9]),
                                      ],
                                    ))
                                : const Center(child: LoadingWid());
                          }),
                    )
                  ],
                ),
              ),
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
