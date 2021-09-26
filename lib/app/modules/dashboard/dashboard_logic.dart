import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class DashboardLogic extends GetxController {
  String _select = '';

  String get select => _select;

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
      case 'Categorías':
        _goToRoute(Routes.categorias);
        break;
      case 'Subastas':
        _goToRoute(Routes.tSubastas);
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
      case 'Perfil':
        _goToRoute(Routes.perfil);
        break;
    }
  }

  void _goToRoute(String route) {
    Get.rootDelegate.toNamed(route);
  }
}
