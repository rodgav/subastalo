import 'package:flutter/material.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DrawerWid extends StatelessWidget {
  const DrawerWid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/tablero.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Tablero',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/subasta.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Mi subasta',
                style: TextStyle(color: ColorsUtils.white),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_outlined,
                color: ColorsUtils.white,
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/categorias.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Categorías',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/subasta.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Subastas',
                style: TextStyle(color: ColorsUtils.white),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_outlined,
                color: ColorsUtils.white,
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/paginas.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Paginas',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/comentarios.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Comentarios',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/informe.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Informe de subastas',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/usuarios.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Usuarios',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/campanas.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Campañas',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading:ImageIcon(
                AssetImage('assets/icons/localizaciones.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Localizaciones',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/mensajes.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Mensajes',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/monetizacion.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Monetización',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/usuarios.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Administradores',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: ImageIcon(
                AssetImage('assets/icons/pagos.png'),
                color: ColorsUtils.white,
              ),
              title: Text(
                'Pagos',
                style: TextStyle(color: ColorsUtils.white),
              ),
            ),
            ListTile(
              tileColor: Color(0xff253238),
              leading: Icon(Icons.person_outline,
                color: ColorsUtils.white,
              ),
              title: Text(
                'Perfil',
                style: TextStyle(color: ColorsUtils.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
