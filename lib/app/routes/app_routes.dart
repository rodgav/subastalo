part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const subastas = _Paths.home + _Paths.subastas;

  static String subastasDetail(String subastaId) => '$subastas/$subastaId';
}

abstract class _Paths {
  static const home = '/home';
  static const subastas = '/subastas';
  static const subastasDetail = '/:subastaId';
}
