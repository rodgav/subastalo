import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/subasta_empresa.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'usuarios_detail_logic.dart';

class UsuariosDetailPage extends StatelessWidget {
  final logic = Get.find<UsuariosDetailLogic>();

  UsuariosDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 20, horizontal: web ? 50 : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('USUARIOS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('Aquí podrás gestionar tus usuarios',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        ButtonWid(
                            width: 186,
                            height: 40,
                            color1: ColorsUtils.blueButt1,
                            color2: ColorsUtils.blueButt2,
                            textButt: 'Añadir usuario',
                            voidCallback: logic.newUser)
                      ],
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.arrow_back_ios_sharp,
                                color: ColorsUtils.black),
                            SizedBox(width: 5),
                            Text('Volver a subastas',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        onTap: logic.toBack,
                      ),
                    ),
                    Container(
                      width: width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'DANILO BOY VELA',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: width,
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.spaceBetween,
                              runAlignment: WrapAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: width / 4,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Nombre',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Danilo Boy Vela'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Nombre de usuario',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Danilo'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('consultas@daniloboy.com'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Sexo',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Masculino'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Móvil',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('924 726 005'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width / 4,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Télefono',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('92367832'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Dirección',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Av. javier prado este 1166'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'País',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Perú'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Creado',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('09/07/2020'),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Estado',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Activo'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 152,
                                  height: 152,
                                  decoration: BoxDecoration(
                                      color: ColorsUtils.grey1.withOpacity(0.5),
                                      shape: BoxShape.circle),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GetBuilder<UsuariosDetailLogic>(
                        id: 'subastas',
                        builder: (_) {
                          final subastas = _.subastasModel?.subastas;
                          return subastas != null
                              ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Text(
                                'SUBASTAS PUBLICADAS',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                  width: size.width,
                                  height: 440,
                                  margin: const EdgeInsets.only(
                                      top: 10),
                                  child: subastas.isNotEmpty
                                      ? ListView.builder(
                                    padding:
                                    const EdgeInsets.all(
                                        0),
                                    scrollDirection:
                                    Axis.horizontal,
                                    itemBuilder: (__,
                                        index) =>
                                        SubastaEmpresa(
                                            subasta: subastas[
                                            index],
                                            left:10,
                                            voidCallback:
                                                () => null),
                                    itemCount:
                                    subastas.length,
                                  )
                                      : const NoDataWid()),
                            ],
                          )
                              : const LoadingWid();
                        })
                  ],
                )));
      },
    );
  }
}
