import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/departamentos.dart';
import 'package:subastalo/app/data/models/distritos.dart';
import 'package:subastalo/app/data/models/provincias.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
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
                                          width: width / 4,
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
                                              SizedBox(height: 40,
                                                child: TxtFieldBor(
                                                    controller: logic.nameCtrl,
                                                    validator: isNotEmpty,
                                                    width: width / 4,
                                                    hint: 'Nombre',
                                                    icon: null,
                                                    enabledBorder: ColorsUtils.grey1,
                                                    focusedBorder: ColorsUtils.blue1),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Número de contacto',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              SizedBox(height: 40,
                                                child: TxtFieldBor(
                                                    controller: logic.phoneCtrl,
                                                    validator: isNotEmpty,
                                                    width: width / 4,
                                                    hint: 'Número de contacto',
                                                    icon: null,
                                                    enabledBorder: ColorsUtils.grey1,
                                                    focusedBorder: ColorsUtils.blue1),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width /4,
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
                                              SizedBox(height: 40,
                                                child: TxtFieldBor(
                                                    controller: logic.addressCtrl,
                                                    validator: isNotEmpty,
                                                    width: width / 4,
                                                    hint: 'Dirección',
                                                    icon: null,
                                                    enabledBorder: ColorsUtils.grey1,
                                                    focusedBorder: ColorsUtils.blue1),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 40),SizedBox(
                                    width: width,
                                    child: Wrap(
                                      alignment: WrapAlignment.spaceBetween,
                                      runAlignment: WrapAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width / 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Departamento',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              GetBuilder<PerfilLogic>(
                                                  id: 'departamentos',
                                                  builder: (_) {
                                                    final departamentos = _.departamentosModel?.departamentos;
                                                    return departamentos != null
                                                        ? departamentos.isNotEmpty
                                                        ? Container(
                                                      padding: const EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border:
                                                          Border.all(color: ColorsUtils.grey1)),
                                                      height: 50,
                                                      child: DropdownButton<Departamento>(
                                                        underline: Container(
                                                          height: 0,
                                                          color: Colors.transparent,
                                                        ),
                                                        hint: const Text(
                                                            'Seleccione un departamento'),
                                                        isExpanded: true,
                                                        value: _.selectDepart,
                                                        items: departamentos
                                                            .map((e) =>
                                                            DropdownMenuItem<Departamento>(
                                                                value: e,
                                                                child: Text(e.nombre)))
                                                            .toList(),
                                                        onChanged: (value) =>
                                                            _.departSelect(value as Departamento),
                                                      ),
                                                    )
                                                        : const NoDataWid()
                                                        : const LoadingWid();
                                                  }),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Provincia',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              GetBuilder<PerfilLogic>(
                                                  id: 'provincias',
                                                  builder: (_) {
                                                    final provincias = _.provinciasModel?.provincias;
                                                    return provincias != null
                                                        ? provincias.isNotEmpty
                                                        ? Container(
                                                      padding: const EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border:
                                                          Border.all(color: ColorsUtils.grey1)),
                                                      height: 50,
                                                      child: DropdownButton<Provincia>(
                                                        underline: Container(
                                                          height: 0,
                                                          color: Colors.transparent,
                                                        ),
                                                        hint:
                                                        const Text('Seleccione una provincia'),
                                                        isExpanded: true,
                                                        value: _.selectProv,
                                                        items: provincias
                                                            .map((e) => DropdownMenuItem<Provincia>(
                                                            value: e, child: Text(e.nombre)))
                                                            .toList(),
                                                        onChanged: (value) =>
                                                            _.provSelect(value as Provincia),
                                                      ),
                                                    )
                                                        : const NoDataWid()
                                                        : const LoadingWid();
                                                  }),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Distrito',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorsUtils.grey1),
                                              ),
                                              const SizedBox(height: 5),
                                              GetBuilder<PerfilLogic>(
                                                  id: 'distritos',
                                                  builder: (_) {
                                                    final distritos = _.distritosModel?.distritos;
                                                    return distritos != null
                                                        ? distritos.isNotEmpty
                                                        ? Container(
                                                      padding: const EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border:
                                                          Border.all(color: ColorsUtils.grey1)),
                                                      height: 50,
                                                      child: DropdownButton<Distrito>(
                                                        underline: Container(
                                                          height: 0,
                                                          color: Colors.transparent,
                                                        ),
                                                        hint: const Text('Seleccione un distrito'),
                                                        isExpanded: true,
                                                        value: _.selectDistr,
                                                        items: distritos
                                                            .map((e) => DropdownMenuItem<Distrito>(
                                                            value: e, child: Text(e.nombre)))
                                                            .toList(),
                                                        onChanged: (value) =>
                                                            _.distriSelect(value as Distrito),
                                                      ),
                                                    )
                                                        : const NoDataWid()
                                                        : const LoadingWid();
                                                  }),
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
