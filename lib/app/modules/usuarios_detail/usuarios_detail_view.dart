import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/subasta_empresa.dart';
import 'package:subastalo/app/modules/usuarios/usuarios_widget/subasta_usuario.dart';
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
                    const Text('USUARIOS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Text('Aquí podrás gestionar tus usuarios',
                        style: TextStyle(fontSize: 12)),
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
                    GetBuilder<UsuariosDetailLogic>(
                      id: 'usuario',
                      builder: (_) {
                        final usuario = _.user;
                        return usuario != null
                            ? Container(
                                width: width,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF5F5F5),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      usuario.name,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: width,
                                      child: Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        alignment: WrapAlignment.spaceBetween,
                                        runAlignment:
                                            WrapAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: width / 4,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'Nombre',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.name),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'Nombre de usuario',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        '${usuario.name.substring(0, 2)}'
                                                        '${usuario.email.substring(0, 2)}'),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const Text(
                                                      'Email',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        usuario.email),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const Text(
                                                      'Sexo',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.idGender==1?'hombre':'mujer'),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const Text(
                                                      'Móvil',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.phone),
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const  Text(
                                                      'Télefono',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.phone),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const   Text(
                                                      'Dirección',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        usuario.address),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const  Text(
                                                      'Creado',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.createdAt.toString().substring(0,10)),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children:  [
                                                    const Text(
                                                      'Estado',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(usuario.active!=0?'activo':'inactivo'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 152,
                                            height: 152,
                                            decoration: BoxDecoration(
                                                color: ColorsUtils.grey1
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                    GetBuilder<UsuariosDetailLogic>(
                        id: 'subastas',
                        builder: (_) {
                          final subastas = _.subastaModel?.subasta;
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
                                        height: 340,
                                        margin: const EdgeInsets.only(top: 10),
                                        child: subastas.isNotEmpty
                                            ? ListView.builder(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (__, index) =>
                                                    SubastaUsuario(
                                                        subasta:
                                                            subastas[index],
                                                        left: 10,
                                                        voidCallback: () =>
                                                            null),
                                                itemCount: subastas.length,
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
