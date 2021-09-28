import 'package:get/get.dart';
import 'package:subastalo/app/data/middlewares/auth_middleware.dart';
import 'package:subastalo/app/modules/administradores/administradores_binding.dart';
import 'package:subastalo/app/modules/administradores/administradores_view.dart';
import 'package:subastalo/app/modules/campanas/campanas_binding.dart';
import 'package:subastalo/app/modules/campanas/campanas_view.dart';
import 'package:subastalo/app/modules/categorias/categorias_binding.dart';
import 'package:subastalo/app/modules/categorias/categorias_view.dart';
import 'package:subastalo/app/modules/comentarios/comentarios_binding.dart';
import 'package:subastalo/app/modules/comentarios/comentarios_view.dart';
import 'package:subastalo/app/modules/dashboard/dashboard_binding.dart';
import 'package:subastalo/app/modules/dashboard/dashboard_view.dart';
import 'package:subastalo/app/modules/home/home_binding.dart';
import 'package:subastalo/app/modules/home/home_view.dart';
import 'package:subastalo/app/modules/info_subastas/info_subastas_binding.dart';
import 'package:subastalo/app/modules/info_subastas/info_subastas_view.dart';
import 'package:subastalo/app/modules/localizaciones/localizaciones_binding.dart';
import 'package:subastalo/app/modules/localizaciones/localizaciones_view.dart';
import 'package:subastalo/app/modules/login/login_binding.dart';
import 'package:subastalo/app/modules/login/login_view.dart';
import 'package:subastalo/app/modules/mensaje_detail/mensaje_detail_binding.dart';
import 'package:subastalo/app/modules/mensaje_detail/mensaje_detail_view.dart';
import 'package:subastalo/app/modules/mensajes/mensajes_binding.dart';
import 'package:subastalo/app/modules/mensajes/mensajes_view.dart';
import 'package:subastalo/app/modules/mi_favoritas/mi_favoritas_binding.dart';
import 'package:subastalo/app/modules/mi_favoritas/mi_favoritas_view.dart';
import 'package:subastalo/app/modules/mi_pendientes/mi_pendientes_binding.dart';
import 'package:subastalo/app/modules/mi_pendientes/mi_pendientes_view.dart';
import 'package:subastalo/app/modules/mi_subasta/mi_subasta_binding.dart';
import 'package:subastalo/app/modules/mi_subasta/mi_subasta_view.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_binding.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_view.dart';
import 'package:subastalo/app/modules/monetizacion/monetizacion_binding.dart';
import 'package:subastalo/app/modules/monetizacion/monetizacion_view.dart';
import 'package:subastalo/app/modules/new_pagina/new_pagina_binding.dart';
import 'package:subastalo/app/modules/new_pagina/new_pagina_view.dart';
import 'package:subastalo/app/modules/paginas/paginas_binding.dart';
import 'package:subastalo/app/modules/paginas/paginas_view.dart';
import 'package:subastalo/app/modules/pagos/pagos_binding.dart';
import 'package:subastalo/app/modules/pagos/pagos_view.dart';
import 'package:subastalo/app/modules/perfil/perfil_binding.dart';
import 'package:subastalo/app/modules/perfil/perfil_view.dart';
import 'package:subastalo/app/modules/root/root_binding.dart';
import 'package:subastalo/app/modules/root/root_view.dart';
import 'package:subastalo/app/modules/subastas/subastas_binding.dart';
import 'package:subastalo/app/modules/subastas/subastas_view.dart';
import 'package:subastalo/app/modules/subastas_detail/subastas_detail_binding.dart';
import 'package:subastalo/app/modules/subastas_detail/subastas_detail_view.dart';
import 'package:subastalo/app/modules/t_aprobadas/t_aprobadas_binding.dart';
import 'package:subastalo/app/modules/t_aprobadas/t_aprobadas_view.dart';
import 'package:subastalo/app/modules/t_bloqueadas/t_bloqueadas_binding.dart';
import 'package:subastalo/app/modules/t_bloqueadas/t_bloqueadas_view.dart';
import 'package:subastalo/app/modules/t_pendientes/t_pendientes_binding.dart';
import 'package:subastalo/app/modules/t_pendientes/t_pendientes_view.dart';
import 'package:subastalo/app/modules/tablero/tablero_binding.dart';
import 'package:subastalo/app/modules/tablero/tablero_view.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_binding.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_view.dart';
import 'package:subastalo/app/modules/usuarios_detail/usuarios_detail_binding.dart';
import 'package:subastalo/app/modules/usuarios_detail/usuarios_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
  static final routes = [
    GetPage(
        name: '/',
        page: () => RootPage(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              middlewares: [EnsureNotAuthMiddleware()],
              name: _Paths.login,
              page: () => LoginPage(),
              binding: LoginBinding()),
          GetPage(
              preventDuplicates: true,
              name: _Paths.home,
              page: () => HomePage(),
              binding: HomeBinding(),
              title: null,
              children: [
                GetPage(
                    name: _Paths.subastas,
                    page: () => const SubastasPage(),
                    binding: SubastasBinding(),
                    children: [
                      GetPage(
                          name: _Paths.subastasDetail,
                          page: () => const SubastasDetailPage(),
                          binding: SubastasDetailBinding())
                    ])
              ]),
          GetPage(
              middlewares: [EnsureAuthMiddleware()],
              preventDuplicates: true,
              name: _Paths.dashboard,
              page: () => DashBoardPage(),
              binding: DashboardBinding(),
              title: null,
              children: [
                GetPage(
                    name: _Paths.tablero,
                    page: () => TableroPage(),
                    binding: TableroBinding()),
                GetPage(
                    name: _Paths.miSubastas,
                    page: () => const MiSubastaPage(),
                    binding: MiSubastaBinding(),
                    children: [
                      GetPage(
                          name: _Paths.misubastasDetail,
                          page: () => const MiSubastaDetailPage(),
                          binding: MiSubastaDetailBinding())
                    ]),
                GetPage(
                  name: _Paths.miPendientes,
                  page: () => MiPendientesPage(),
                  binding: MiPendientesBinding(),
                ),
                GetPage(
                  name: _Paths.miFavoritas,
                  page: () => MiFavoritasPage(),
                  binding: MiFavoritasBinding(),
                ),
                GetPage(
                    name: _Paths.categorias,
                    page: () => CategoriasPage(),
                    binding: CategoriasBinding()),
                GetPage(
                    name: _Paths.tAprobadas,
                    page: () => TAprobadasPage(),
                    binding: TAprobadasBinding()),
                GetPage(
                    name: _Paths.tPendientes,
                    page: () => TPendientesPage(),
                    binding: TPendientesBinding()),
                GetPage(
                    name: _Paths.tBloqueadas,
                    page: () => TBloqueadasPage(),
                    binding: TBloqueadasBinding()),
                GetPage(
                    name: _Paths.paginas,
                    page: () => PaginasPage(),
                    binding: PaginasBinding(),
                    children: [
                      GetPage(
                          name: _Paths.newPagina,
                          page: () => NewPaginaPage(),
                          binding: NewPaginaBinding())
                    ]),
                GetPage(
                    name: _Paths.comentarios,
                    page: () => ComentariosPage(),
                    binding: ComentariosBinding()),
                GetPage(
                    name: _Paths.infoSubastas,
                    page: () => InfoSubastasPage(),
                    binding: InfoSubastasBinding()),
                GetPage(
                    name: _Paths.usuarios,
                    page: () => UsuariosPage(),
                    binding: UsuariosBinding(),
                    children: [
                      GetPage(
                          name: _Paths.usuariosDetail,
                          page: () => UsuariosDetailPage(),
                          binding: UsuariosDetailBinding())
                    ]),
                GetPage(
                    name: _Paths.campanas,
                    page: () => CampanasPage(),
                    binding: CampanasBinding()),
                GetPage(
                    name: _Paths.localizaciones,
                    page: () => LocalizacionesPage(),
                    binding: LocalizacionesBinding()),
                GetPage(
                    name: _Paths.mensajes,
                    page: () => MensajesPage(),
                    binding: MensajesBinding(),
                    children: [
                      GetPage(
                          name: _Paths.mensajeDetail,
                          page: () => MensajeDetailPage(),
                          binding: MensajeDetailBinding())
                    ]),
                GetPage(
                    name: _Paths.monetizacion,
                    page: () => MonetizacionPage(),
                    binding: MonetizacionBinding()),
                GetPage(
                    name: _Paths.administradores,
                    page: () => AdministradoresPage(),
                    binding: AdministradoresBinding()),
                GetPage(
                    name: _Paths.pagos,
                    page: () => PagosPage(),
                    binding: PagosBinding()),
                GetPage(
                    name: _Paths.perfil,
                    page: () => PerfilPage(),
                    binding: PerfilBinding()),
              ])
        ])
  ];
}
