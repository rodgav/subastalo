import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

import 'perfil_logic.dart';

class PerfilPage extends StatelessWidget {
  final logic = Get.find<PerfilLogic>();

  PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(
      builder: (_, constraints) {
        final width = constraints.maxWidth;
        return Container(
          padding:
              EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('TU PERFIL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Aquí podrás gestionar los datos de tu perfil',
                      style: TextStyle(fontSize: 12)),
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: ColorsUtils.blue3,
                          unselectedLabelColor: Theme.of(context).hintColor,
                          indicator: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorsUtils.blue3,
                                width: 4,
                              ),
                            ),
                          ),
                          tabs: [
                            Container(
                              height: 30,
                              padding: const EdgeInsets.only(
                                  right: 10, top: 5, bottom: 5),
                              margin: const EdgeInsets.only(right: 10),
                              child: const Text(
                                'Perfil',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 10, top: 5, bottom: 5),
                              margin: const EdgeInsets.only(right: 10),
                              child: const Text(
                                'Cuenta',
                                style: TextStyle(),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    width: width,
                                    child: Wrap(
                                      alignment: WrapAlignment.spaceBetween,
                                      runAlignment: WrapAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width / 5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Nombre',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                width: width / 5,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                  'Ariadne',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Apellido',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                width: width / 5,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                  'Boy Paredes',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Nombre de contacto',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                width: width / 5,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                  '+51 925497389',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Dirección',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                width: width / 5,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                  'Av. Javier Prado Este 1166',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    width: width,
                                    child: Wrap(
                                      alignment: WrapAlignment.spaceBetween,
                                      runAlignment: WrapAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width / 6,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Sexo',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  underline: Container(
                                                    height: 0,
                                                    color: Colors.transparent,
                                                  ),
                                                  hint: const Text('Sexo'),
                                                  items: const [
                                                    DropdownMenuItem<String>(
                                                        child: Text('Mujer'))
                                                  ],
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 6,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Fecha de Nacimiento',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                width: width / 6,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: const Text(
                                                  '14-06-1999',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 6,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'País',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  underline: Container(
                                                    height: 0,
                                                    color: Colors.transparent,
                                                  ),
                                                  hint: const Text('País'),
                                                  items: const [
                                                    DropdownMenuItem<String>(
                                                        child: Text('Perú'))
                                                  ],
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 6,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Ciudad',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  underline: Container(
                                                    height: 0,
                                                    color: Colors.transparent,
                                                  ),
                                                  hint: const Text('Ciudad'),
                                                  items: const [
                                                    DropdownMenuItem<String>(
                                                        child: Text('Lima'))
                                                  ],
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 6,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Otro dato',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            ColorsUtils.grey1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  underline: Container(
                                                    height: 0,
                                                    color: Colors.transparent,
                                                  ),
                                                  hint: const Text('Opciones'),
                                                  items: const [
                                                    DropdownMenuItem<String>(
                                                        child: Text('Opciones'))
                                                  ],
                                                  onChanged: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  ButtonWid(
                                      width: 186,
                                      height: 40,
                                      color1: ColorsUtils.grey1,
                                      color2: ColorsUtils.grey1,
                                      textButt: 'Guardar',
                                      voidCallback: () => null)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    width: width,
                                    child: Wrap(
                                      spacing: 40,
                                      runSpacing: 40,
                                      children: [
                                        SizedBox(
                                            width: width / 3,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Metodos de pago',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                const SizedBox(height: 20),
                                                const Text(
                                                  'Tarjeta',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                const SizedBox(height: 5),
                                                Container(
                                                  width: width / 3,
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: ColorsUtils
                                                              .grey1)),
                                                  child: Row(
                                                    children: [
                                                      const ImageIcon(
                                                        AssetImage(
                                                            'assets/icons/buscar.png'),
                                                        size: 15,
                                                        color:
                                                            ColorsUtils.blue2,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      const Text('xxxxx-3333',
                                                          style: TextStyle(
                                                              fontSize: 16)),
                                                      Expanded(
                                                          child: Container()),
                                                      const ImageIcon(
                                                        AssetImage(
                                                            'assets/icons/buscar.png'),
                                                        size: 15,
                                                        color:
                                                            ColorsUtils.grey1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                TextButton(
                                                    onPressed: () => null,
                                                    child: Row(
                                                      children: const [
                                                        ImageIcon(
                                                          AssetImage(
                                                              'assets/icons/buscar.png'),
                                                          size: 15,
                                                          color:
                                                              ColorsUtils.blue2,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text('xxxxx-3333',
                                                            style: TextStyle(
                                                                color:
                                                                    ColorsUtils
                                                                        .blue2,
                                                                fontSize: 16))
                                                      ],
                                                    ))
                                              ],
                                            )),
                                        SizedBox(
                                            width: width / 3,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Información de la cuenta',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                const SizedBox(height: 20),
                                                const Text(
                                                  'Correo',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                const SizedBox(height: 5),
                                                TxtFieldBor(
                                                    controller: logic.emailCtrl, validator: isEmail,
                                                    width: width / 3,
                                                    hint:
                                                        'dboyvela33@gmail.com',
                                                    icon: null,
                                                    enabledBorder:
                                                        ColorsUtils.grey1,
                                                    focusedBorder:
                                                        ColorsUtils.blue3),
                                                const SizedBox(height: 20),
                                                const Text(
                                                  'Contraseña',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                                const SizedBox(height: 5),
                                                TxtFieldBor(
                                                    controller:
                                                        logic.passwordCtrl, validator: isPassword,
                                                    width: width / 3,
                                                    hint: '*****************',
                                                    icon: null,
                                                    enabledBorder:
                                                        ColorsUtils.grey1,
                                                    focusedBorder:
                                                        ColorsUtils.blue3),
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  ButtonWid(
                                      width: 200,
                                      height: 40,
                                      color1: ColorsUtils.grey1,
                                      color2: ColorsUtils.grey1,
                                      textButt: 'Guardar',
                                      voidCallback: () => null)
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
