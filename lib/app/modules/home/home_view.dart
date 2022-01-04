import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/global_widgets/categoria.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/app/modules/home/widgets_home/drawer_home.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/generated/l10n.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final logic = Get.find<HomeLogic>();

  //late Locale _userLocale;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    //final newLocale = Localizations.localeOf(context);
    //if (newLocale != _userLocale) _userLocale = newLocale;
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      return Scaffold(
          key: logic.scaffoldKeyHome,
          endDrawer: web ? null : const DrawerHome(),
          body: Column(
            children: [
              Text(S.of(context).title),
              ElevatedButton(
                  onPressed: () async {
                    await AuthService.to.saveLanguage();
                    Phoenix.rebirth(context);
                  },
                  child: Text(S.of(context).language)),
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
                                width: size.width * 0.2,
                                height: 48.33,
                                child: Image.asset('assets/images/logo.png'),
                              ),
                              onTap: () => logic.toHome(current?.location),
                            ),
                          ),
                          SizedBox(
                              width: size.width * 0.1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: DropdownButton<String>(
                                  underline: Container(
                                    height: 0,
                                    color: Colors.transparent,
                                  ),
                                  hint: const Text(
                                    'Nosotros',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  items: const [
                                    DropdownMenuItem<String>(
                                        child: Text(
                                      'Nosotros',
                                      style: TextStyle(fontSize: 16),
                                    ))
                                  ],
                                  onChanged: (value) => null,
                                ),
                              )),
                          SizedBox(
                            width: size.width * 0.1,
                            child: const FittedBox(
                              fit: BoxFit.scaleDown,
                              child: MouseRegion(
                                child: Text(
                                  '¿Cómo comprar?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                cursor: SystemMouseCursors.click,
                              ),
                            ),
                          ),
                          SizedBox(
                              width: size.width * 0.1,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: MouseRegion(
                                  child: GestureDetector(
                                    child: const Text(
                                      'Empieza a vender',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    onTap: logic.toVender,
                                  ),
                                  cursor: SystemMouseCursors.click,
                                ),
                              )),
                          TxtFieldCirWid(
                              width: size.width * 0.25,
                              hint: 'Busca productos en SUBASTALO',
                              color: ColorsUtils.grey1.withOpacity(0.2),
                              suffix: true),
                          AuthService.to.isLoggedIn
                              ? const Icon(Icons.message)
                              : SizedBox(
                                  width: size.width * 0.1,
                                  child: const FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: MouseRegion(
                                      child: Text(
                                        'Unirse hoy',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      cursor: SystemMouseCursors.click,
                                    ),
                                  )),
                          AuthService.to.isLoggedIn
                              ? const Text(
                                  'Jhonatan',
                                  style: TextStyle(fontSize: 16),
                                )
                              : SizedBox(
                                  width: size.width * 0.1,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: ColorsUtils.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              side: const BorderSide(
                                                  color: ColorsUtils.blue1),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                              elevation: 0),
                                          onPressed: logic.toLogin,
                                          child: const Text(
                                            'Inicia Sesión',
                                            style: TextStyle(
                                                color: ColorsUtils.blue3,
                                                fontSize: 16),
                                          )))),
                          AuthService.to.isLoggedIn
                              ? SizedBox(
                                  width: size.width * 0.1,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: MouseRegion(
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
                                      )))
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
                            width: 200,
                            height: 45,
                            child: Image.asset('assets/images/logo.png'),
                          ),
                          onTap: () => logic.toHome(current?.location),
                        ),
                      ),
                      centerTitle: false,
                      actions: [
                          AuthService.to.isLoggedIn
                              ? IconButton(
                                  onPressed: () => logic
                                      .scaffoldKeyHome.currentState!
                                      .openEndDrawer(),
                                  icon: const Icon(
                                    Icons.menu,
                                    color: ColorsUtils.blue3,
                                  ))
                              : SizedBox(
                                  width: size.width * 0.2,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: ColorsUtils.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              side: const BorderSide(
                                                  color: ColorsUtils.blue1),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 2),
                                              elevation: 0),
                                          onPressed: logic.toLogin,
                                          child: const Text(
                                            'Inicia Sesión',
                                            style: TextStyle(
                                                color: ColorsUtils.blue3,
                                                fontSize: 16),
                                          )))),
                          const SizedBox(width: 2)
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
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(color: ColorsUtils.white))),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: RichText(
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            text: const TextSpan(children: [
                              TextSpan(
                                text: 'Subastas Realizadas\n',
                                style: TextStyle(
                                    color: ColorsUtils.white, fontSize: 14),
                              ),
                              TextSpan(
                                text: '7633',
                                style: TextStyle(
                                    color: ColorsUtils.white, fontSize: 40),
                              ),
                            ]),
                          ),
                        )),
                    Expanded(
                      child: GetBuilder<HomeLogic>(
                          id: 'categorias',
                          builder: (_) {
                            final categorias = _.categoriasModel?.categorys;
                            return categorias != null
                                ? SizedBox(
                                    height: 50,
                                    child: ListView(
                                        padding: const EdgeInsets.all(10),
                                        scrollDirection: Axis.horizontal,
                                        children: categorias
                                            .map(
                                              (categoria) => CategoriaWid(
                                                  categoria: categoria),
                                            )
                                            .toList()))
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
