import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/dashboard/dashboard_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardLogic>(
        id: 'drawer',
        builder: (_) {
          final select = _.select;
          return Drawer(
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
                     Container(color:  const Color(0xff253238),
                       child: ExpansionTile(
                        leading: const ImageIcon(
                          AssetImage('assets/icons/subasta.png'),
                          color: ColorsUtils.white,
                        ),
                        title: const Text(
                          'Mi subasta',
                          style: TextStyle(color: ColorsUtils.white),
                        ),
                        trailing: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: ColorsUtils.white,
                        ),
                        children: [
                          ListTile(
                            contentPadding:const EdgeInsets.only(left: 68),
                            title: const Text(
                              'Mis subastas',
                              style: TextStyle(color: ColorsUtils.white),
                            ),
                            selected: select == 'Mis subastas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Mis subastas'),
                          ),
                          ListTile(
                            contentPadding:const EdgeInsets.only(left: 68),
                            title: const Text(
                              'Pendientes de aprobación',
                              style: TextStyle(color: ColorsUtils.white),
                            ),
                            selected: select == 'Pendientes de aprobación',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Pendientes de aprobación'),
                          ),
                          ListTile(
                            contentPadding:const EdgeInsets.only(left: 68),
                            title: const Text(
                              'Subastas favoritas',
                              style: TextStyle(color: ColorsUtils.white),
                            ),
                            selected: select == 'Subastas favoritas',
                            selectedTileColor: const Color(0xff324047),
                            onTap: () => _.onSelectDrawer('Subastas favoritas'),
                          ),
                        ],
                    ),
                     ),
                  ListTile(
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
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/subasta.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Subastas',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Subastas',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Subastas'),
                    trailing: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: ColorsUtils.white,
                    ),
                  ),
                  ListTile(
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
                  ),
                  ListTile(
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
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/informe.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Informe de subastas',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Informe de subastas',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Informe de subastas'),
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/usuarios.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Usuarios',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Usuarios',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Usuarios'),
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/campanas.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Campañas',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Campañas',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Campañas'),
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/localizaciones.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Localizaciones',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Localizaciones',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Localizaciones'),
                  ),
                  ListTile(
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
                  ),
                  ListTile(
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
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/usuarios.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Administradores',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Administradores',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Administradores'),
                  ),
                  ListTile(
                    tileColor: const Color(0xff253238),
                    leading: const ImageIcon(
                      AssetImage('assets/icons/pagos.png'),
                      color: ColorsUtils.white,
                    ),
                    title: const Text(
                      'Pagos',
                      style: TextStyle(color: ColorsUtils.white),
                    ),
                    selected: select == 'Pagos',
                    selectedTileColor: const Color(0xff324047),
                    onTap: () => _.onSelectDrawer('Pagos'),
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
                  )
                ],
              ),
            ),
          );
        });
  }
}
