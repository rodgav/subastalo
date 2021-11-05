import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (_) {
      return Drawer(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              AuthService.to.isLoggedIn
                  ? MouseRegion(cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: DrawerHeader(
                          child: Column(
                          children: const [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Placeholder(),
                            ),
                            Text('Jhonatan')
                          ],
                        )),
                      onTap: _.toDashboard,
                    ),
                  )
                  : ListTile(
                      title: const Text('Iniciar sesión'),
                      onTap: _.toLogin,
                    ),
              TxtFieldCirWid(
                  width: double.infinity,
                  hint: 'Busca productos en SUBASTALO',
                  color: ColorsUtils.grey1.withOpacity(0.2),
                  suffix: true),
              const ExpansionTile(
                title: Text('Nosostros'),
                children: [
                  ListTile(
                    title: Text('Nosotros'),
                  )
                ],
              ),
              const ListTile(
                title: Text('¿Cómo comprar?'),
              ),
              ListTile(
                  title: const Text('¿Empieza a vender?'), onTap: _.toVender),
            ],
          ),
        ),
      );
    });
  }
}
