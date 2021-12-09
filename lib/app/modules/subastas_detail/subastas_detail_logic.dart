import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/images_subastas.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubastasDetailLogic extends GetxController {
  final String subastaId;

  SubastasDetailLogic(this.subastaId);

  final _localDataRepository = Get.find<LocalDataRepository>();
  Subasta? _subasta;
  List<ImagesSubasta> _imagesSubasta = [];

  Subasta? get subasta => _subasta;

  List<ImagesSubasta> get imagesSubasta => _imagesSubasta;

  @override
  void onReady() {
    _getSubasta(subastaId);
    super.onReady();
  }

  void _getSubasta(String subastaId) async {
    _subasta = await _localDataRepository.getSubastaId(subastaId);
    _imagesSubasta = await _localDataRepository.getImagesSubastas(subastaId);
    update(['subasta', 'images']);
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void subasEnVivo(String subastaId) {
    Get.rootDelegate.toNamed(Routes.vivo(subastaId));
    /*Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: toBack,
                      icon: const Icon(
                        Icons.close,
                        color: ColorsUtils.black,
                      ))
                ],
              ),
              const Center(
                child: ImageIcon(
                  AssetImage('assets/icons/garantia.png'),
                  size: 100,color: ColorsUtils.orange2,
                ),
              ),  const SizedBox(height: 20),
              const Center(
                child: Text(
                  'GARANTÍA: US\$ 50 ',
                  style: TextStyle(fontSize: 26, color: ColorsUtils.black,fontWeight: FontWeight.bold),
                ),
              ),  const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Al consignar la garantía\naceptas a conectarte a la sala\n'
                  '"En vivo" y a enviar por lo menos una puja válida\ndurante '
                  'el proceso en vivo.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.orange1,
                    color2: ColorsUtils.orange2,
                    textButt: 'Aceptar',
                    voidCallback: () => null),
              )
            ],
          ),
        ),
      ),
    ));*/
    /*Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: toBack,
                      icon: const Icon(
                        Icons.close,
                        color: ColorsUtils.black,
                      ))
                ],
              ),
              Center(
                child: Image.asset('assets/icons/sinFondos.png', height: 100),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Aún no tienes fondos',
                  style: TextStyle(
                      fontSize: 26,
                      color: ColorsUtils.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Recuerda recargar tus fondos antes de participar en una subasta.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.orange1,
                    color2: ColorsUtils.orange2,
                    textButt: 'Recargar fondos',
                    voidCallback: recargar),
              )
            ],
          ),
        ),
      ),
    ));*/
  }

  void recargar() {
    Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recargar fondos',
                    style: TextStyle(fontSize: 24, color: ColorsUtils.blue3),
                  ),
                  IconButton(
                      onPressed: toBack,
                      icon: const Icon(
                        Icons.close,
                        color: ColorsUtils.black,
                      ))
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Ingresar cantidad',
                style: TextStyle(color: ColorsUtils.blue3),
              ),
              const SizedBox(height: 5),
              const TxtFieldBor(
                  width: double.infinity,
                  hint: '10 \$',
                  icon: null,
                  enabledBorder: ColorsUtils.grey1,
                  focusedBorder: ColorsUtils.blue3),
              const SizedBox(height: 20),
              ListTile(
                leading: Checkbox(value: true, onChanged: (value) => null),
                title: const Text('Recarga mínima'),
                subtitle: const Text(
                    'La garantía de participación varía por  tipo de producto.'),
                trailing: const Text('\$ 50.00'),
              ),
              const Divider(),
              ListTile(
                leading: Checkbox(value: false, onChanged: (value) => null),
                title: const Text('Recarga media'),
                subtitle: const Text(
                    'La garantía de participación varía por  tipo de producto.'),
                trailing: const Text('\$ 150.00'),
              ),
              const Divider(),
              ListTile(
                leading: Checkbox(value: false, onChanged: (value) => null),
                title: const Text('Recarga alta'),
                subtitle: const Text(
                    'La garantía de participación varía por  tipo de producto.'),
                trailing: const Text('\$ 300.00'),
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Subtotal',
                      style: TextStyle(
                          color: ColorsUtils.grey1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text('\$ 00.00',
                      style: TextStyle(
                          color: ColorsUtils.grey1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Recuerda que si no ganas una subasta el precio pagado por la '
                  'garantía se te devolverá, previa solicitud.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'Elige tu método de pago',
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsUtils.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: ColorsUtils.grey1.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: ColorsUtils.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: ColorsUtils.grey1, blurRadius: 5)
                            ],
                          ),
                          child: Image.asset(
                            'assets/icons/card.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Tarjetas',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: ColorsUtils.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: ColorsUtils.grey1, blurRadius: 5)
                            ],
                          ),
                          child: Image.asset(
                            'assets/icons/transferencia.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Transferencias',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: ColorsUtils.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: ColorsUtils.grey1, blurRadius: 5)
                            ],
                          ),
                          child: Image.asset(
                            'assets/icons/yape.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Yape',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.orange1,
                    color2: ColorsUtils.orange2,
                    textButt: 'Recargar fondos',
                    voidCallback: recargar),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void subastaNegociar(String s) {
    Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: toBack,
                    icon: const Icon(
                      Icons.close,
                      color: ColorsUtils.black,
                    )),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset('assets/icons/martillo.png', height: 100),
              ),
              const Center(
                child: Text(
                  'Oferta negociable',
                  style: TextStyle(
                      color: ColorsUtils.blue3,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'INTRODUCE TU PROPUESTA',
                  style: TextStyle(color: ColorsUtils.black, fontSize: 20),
                ),
              ),
              const SizedBox(height: 5),
              const TxtFieldBor(
                  width: double.infinity,
                  hint: '10 \$',
                  icon: null,
                  enabledBorder: ColorsUtils.grey1,
                  focusedBorder: ColorsUtils.blue3),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Al enviar tu propuesta aceptas\nlas Condiciones y Términos de uso de nuestro servicio.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.orange1,
                    color2: ColorsUtils.orange2,
                    textButt: 'Enviar propuesta',
                    voidCallback: confirmado),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: ColorsUtils.blue3,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(
                    child: Text('GARANTÍA: 25 \$',
                        style: TextStyle(color: ColorsUtils.white))),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void confirmado() {
    Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: toBack,
                    icon: const Icon(
                      Icons.close,
                      color: ColorsUtils.black,
                    )),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset('assets/icons/martillo.png', height: 100),
              ),
              const Center(
                child: Text(
                  'Oferta negociable',
                  style: TextStyle(
                      color: ColorsUtils.blue3,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'CONFIRMA TU PROPUESTA',
                  style: TextStyle(color: ColorsUtils.black, fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: '\$ ',
                      style: TextStyle(fontSize: 30, color: ColorsUtils.green)),
                  TextSpan(
                      text: '544.00',
                      style: TextStyle(
                          fontSize: 30,
                          color: ColorsUtils.grey1,
                          fontWeight: FontWeight.bold))
                ])),
              ),
              const Center(
                  child: Text(
                'COMISIÓN SUBASTALO: 25\$',
                style: TextStyle(fontSize: 12),
              )),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'RECUERDA QUE TU PROPUESTA\nEXPIRA DETRO DE 24 HORAS',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.black),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.orange1,
                    color2: ColorsUtils.orange2,
                    textButt: 'CONFIRMAR',
                    voidCallback: saldoInsufi),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: ColorsUtils.blue3,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(
                    child: Text('GARANTÍA: 25 \$',
                        style: TextStyle(color: ColorsUtils.white))),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void saldoInsufi() {
    Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: toBack,
                    icon: const Icon(
                      Icons.close,
                      color: ColorsUtils.black,
                    )),
              ),
              const SizedBox(height: 20),
              Center(
                child:
                    Image.asset('assets/icons/dineroVolando.png', height: 100),
              ),
              const Center(
                child: Text(
                  'Saldo insuficiente',
                  style: TextStyle(
                      color: ColorsUtils.blue3,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'RECUERDA QUE PARA HACER UNA\nOFERTA, DEBES CONTAR CON SALDO\nEN TU PERFIL.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.orange2),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'COMPRAR SALDO',
                    voidCallback: saldoInsufi),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: ColorsUtils.blue3,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(
                    child: Text('GARANTÍA: 250 \$',
                        style: TextStyle(color: ColorsUtils.white))),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void felicidades() {
    Get.dialog(AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: toBack,
                    icon: const Icon(
                      Icons.close,
                      color: ColorsUtils.black,
                    )),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset('assets/icons/caritaFeliz.png', height: 100),
              ),
              const Center(
                child: Text(
                  '¡FELICIDADES!',
                  style: TextStyle(
                      color: ColorsUtils.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'OFERTA',
                  style: TextStyle(color: ColorsUtils.blue3, fontSize: 14),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'COMISIÓN ASP: 25 \$',
                  style: TextStyle(color: ColorsUtils.black, fontSize: 10),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'GARANTÍA: 25 \$',
                  style: TextStyle(color: ColorsUtils.black, fontSize: 10),
                ),
              ),
              const Center(
                child: Text(
                  'ACABAS DE HACER UNA OFERTA AL VENDEDOR, NOS\nCOMUNICAREMOS CONTIGO, POSTERIORMENTE.',
                  style: TextStyle(fontSize: 16, color: ColorsUtils.blue3),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ButtonWid(
                    width: 300,
                    height: 50,
                    color1: ColorsUtils.blueButt1,
                    color2: ColorsUtils.blueButt2,
                    textButt: 'ACEPTAR',
                    voidCallback: () => null),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: ColorsUtils.blue3,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Center(
                    child: Text('GARANTÍA: 250 \$',
                        style: TextStyle(color: ColorsUtils.white))),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
