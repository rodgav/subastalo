import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class DashboardLogic extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKeyHome = GlobalKey<ScaffoldState>();

  String _select = '';

  String get select => _select;

  void toVender() {
    Get.rootDelegate.toNamed(Routes.vender);
  }

  void toHome(String? location) {
    if (location != '/' &&
        location != '/home' &&
        location != '/home/subastas') {
      Get.rootDelegate.offNamed(Routes.home);
    }
  }

  void onSelectDrawer(String select) {
    _select = select;
    update(['drawer']);
    switch (select) {
      case 'Tablero':
        _goToRoute(Routes.tablero);
        break;
      case 'Mis subastas':
        _goToRoute(Routes.miSubastas);
        break;
      case 'Pendientes de aprobación':
        _goToRoute(Routes.miPendientes);
        break;
      case 'Subastas favoritas':
        _goToRoute(Routes.miFavoritas);
        break;
      case 'Categorías':
        _goToRoute(Routes.categorias);
        break;
      case 'Aprobadas':
        _goToRoute(Routes.tAprobadas);
        break;
      case 'tPendientes de aprobación':
        _goToRoute(Routes.tPendientes);
        break;
      case 'Bloqueadas':
        _goToRoute(Routes.tBloqueadas);
        break;
      case 'Paginas':
        _goToRoute(Routes.paginas);
        break;
      case 'Comentarios':
        _goToRoute(Routes.comentarios);
        break;
      case 'Informe de subastas':
        _goToRoute(Routes.infoSubastas);
        break;
      case 'Usuarios':
        _goToRoute(Routes.usuarios);
        break;
      case 'Campañas':
        _goToRoute(Routes.campanas);
        break;
      case 'Localizaciones':
        _goToRoute(Routes.localizaciones);
        break;
      case 'Mensajes':
        _goToRoute(Routes.mensajes);
        break;
      case 'Monetización':
        _goToRoute(Routes.monetizacion);
        break;
      case 'Administradores':
        _goToRoute(Routes.administradores);
        break;
      case 'Pagos':
        _goToRoute(Routes.pagos);
        break;
      case 'Mis Pagos':
        _goToRoute(Routes.miPagos);
        break;
      case 'Perfil':
        _goToRoute(Routes.perfil);
        break;
      case 'Mi historial':
        _goToRoute(Routes.miHistorial);
        break;
    }
  }

  void _goToRoute(String route) {
    Get.rootDelegate.toNamed(route);
  }

  void closeSession() async {
    await AuthService.to.logout();
    Get.rootDelegate.toNamed(Routes.home);
  }
}
