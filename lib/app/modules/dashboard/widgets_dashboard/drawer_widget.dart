import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/modules/dashboard/dashboard_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final role = AuthService.to.role;
    return GetBuilder<DashboardLogic>(
        id: 'drawer',
        builder: (_) {
          final select = _.select;
          return Drawer(
            child: Container(color: const Color(0xff253238),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/tablero.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Tablero',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Tablero',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Tablero'),
                    ),
                    Container(
                      color: const Color(0xff253238),
                      child: ExpansionTile(
                        leading: const ImageIcon(
                          AssetImage('assets/icons/martillo1.png'),
                          color: ColorsUtils.white,
                        ),
                        title: const Text(
                          'Mi subastas',
                          style: TextStyle(color: ColorsUtils.white),
                        ),
                        trailing: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: ColorsUtils.white,
                        ),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Mis subastas',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Mis subastas'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Mis subastas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Mis subastas'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Pendientes de aprobación',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Pendientes de aprobación'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Pendientes de aprobación',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () =>
                                _.onSelectDrawer('Pendientes de aprobación'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Subastas favoritas',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Subastas favoritas'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Subastas favoritas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Subastas favoritas'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Mi historial',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Mi historial'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Mi historial',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Mi historial'),
                          ),
                        ],
                      ),
                    ),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/categorias.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Categorías',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Categorías',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Categorías'),
                    ):const SizedBox(),
                    role==2? Container(
                      color: const Color(0xff253238),
                      child: ExpansionTile(
                        leading: const ImageIcon(
                          AssetImage('assets/icons/martillo1.png'),
                          color: ColorsUtils.white,
                        ),
                        title: const Text(
                          'Subastas',
                          style: TextStyle(color: ColorsUtils.white),
                        ),
                        trailing: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: ColorsUtils.white,
                        ),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Aprobadas',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Aprobadas'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Aprobadas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Aprobadas'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Pendientes de aprobación',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight:
                                      select == 'tPendientes de aprobación'
                                          ? FontWeight.w900
                                          : FontWeight.normal),
                            ),
                            selected: select == 'tPendientes de aprobación',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () =>
                                _.onSelectDrawer('tPendientes de aprobación'),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.only(left: 68),
                            title: Text(
                              'Bloqueadas',
                              style: TextStyle(
                                  color: ColorsUtils.white,
                                  fontWeight: select == 'Bloqueadas'
                                      ? FontWeight.w900
                                      : FontWeight.normal),
                            ),
                            selected: select == 'Bloqueadas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Bloqueadas'),
                          ),
                        ],
                      ),
                    ):const SizedBox(),
                    role==2?ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/paginas.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Paginas',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Paginas',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Paginas'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/comentarios.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Comentarios',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Comentarios',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Comentarios'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/info.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Informe de subastas',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Informe de subastas',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Informe de subastas'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/personas.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Usuarios',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Usuarios',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Usuarios'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/campañas.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Campañas',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Campañas',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Campañas'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/mensajes.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Mensajes',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Mensajes',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Mensajes'),
                    ):const SizedBox(),
                   /* ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/monetizacion.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Monetización',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Monetización',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Monetización'),
                    ),*/
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/personas.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Administradores',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Administradores',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Administradores'),
                    ):const SizedBox(),
                   role==2? ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/mano.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Pagos',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Pagos',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Pagos'),
                    ):const SizedBox(),ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const ImageIcon(
                        AssetImage('assets/icons/mano.png'),
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Mis Pagos',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Mis Pagos',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Mis Pagos'),
                    ),
                    ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const Icon(
                        Icons.person_outline,
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Perfil',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Perfil',
                      selectedTileColor: const Color(0xff324047),
                      onTap: () => _.onSelectDrawer('Perfil'),
                    ),
                    ListTile(
                      tileColor: const Color(0xff253238),
                      leading: const Icon(
                        Icons.person_outline,
                        color: ColorsUtils.white,
                      ),
                      title: const Text(
                        'Salir',
                        style: TextStyle(color: ColorsUtils.white),
                      ),
                      selected: select == 'Salir',
                      selectedTileColor: const Color(0xff324047),
                      onTap:  _.closeSession,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
