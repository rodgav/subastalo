part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const login = _Paths.login;

  static String loginThen(String afterSuccessFullLogin) =>
      '$login?then=${Uri.encodeQueryComponent(afterSuccessFullLogin)}';
  static const home = _Paths.home;
  static const subastas = _Paths.home + _Paths.subastas;

  static String subastasDetail(String subastaId) => '$subastas/$subastaId';

  static const dashboard = _Paths.dashboard;
  static const tablero = _Paths.dashboard + _Paths.tablero;
  static const miSubastas = _Paths.dashboard + _Paths.miSubastas;

  static String misubastasDetail(String subastaId) => '$miSubastas/$subastaId';

  static const categorias = _Paths.dashboard + _Paths.categorias;
  static const tSubastas = _Paths.dashboard + _Paths.tSubastas;
  static const paginas = _Paths.dashboard + _Paths.paginas;
  static const comentarios = _Paths.dashboard + _Paths.comentarios;
  static const infoSubastas = _Paths.dashboard + _Paths.infoSubastas;
  static const usuarios = _Paths.dashboard + _Paths.usuarios;

  static String usuariosDetail(String usuarioId) => '$usuarios/$usuarioId';

  static const campanas = _Paths.dashboard + _Paths.campanas;
  static const localizaciones = _Paths.dashboard + _Paths.localizaciones;
  static const mensajes = _Paths.dashboard + _Paths.mensajes;
  static const monetizacion = _Paths.dashboard + _Paths.monetizacion;
  static const administradores = _Paths.dashboard + _Paths.administradores;
  static const pagos = _Paths.dashboard + _Paths.pagos;
  static const perfil = _Paths.dashboard + _Paths.perfil;
}

abstract class _Paths {
  static const login = '/login';
  static const home = '/home';
  static const subastas = '/subastas';
  static const subastasDetail = '/:subastaId';
  static const dashboard = '/dashboard';
  static const tablero = '/tablero';
  static const miSubastas = '/misubastas';
  static const misubastasDetail = '/:subastaId';
  static const categorias = '/categorias';
  static const tSubastas = '/subastas';
  static const paginas = '/paginas';
  static const comentarios = '/comentarios';
  static const infoSubastas = '/infosubastas';
  static const usuarios = '/usuarios';
  static const usuariosDetail = '/:usuarioId';
  static const campanas = '/campanas';
  static const localizaciones = '/localizaciones';
  static const mensajes = '/mensajes';
  static const monetizacion = '/monetizacion';
  static const administradores = '/administradores';
  static const pagos = '/pagos';
  static const perfil = '/perfil';
}
