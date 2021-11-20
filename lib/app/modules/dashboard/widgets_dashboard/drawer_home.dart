import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/modules/dashboard/dashboard_logic.dart';
import 'package:subastalo/utils/colors_utils.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardLogic>(builder: (_) {
      return Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
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
