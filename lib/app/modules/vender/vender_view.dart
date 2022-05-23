import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/global_widgets/footer.dart';
import 'package:subastalo/app/global_widgets/txt_field_bor.dart';
import 'package:subastalo/utils/colors_utils.dart';
import 'package:subastalo/utils/functions.dart';

import 'vender_logic.dart';

class VenderPage extends GetView<VenderLogic> {
  final logic = Get.find<VenderLogic>();

  VenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Container(
                  width: web ? size.width * 0.3 : size.width,
                  padding: EdgeInsets.all(web ? 50 : 20),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [ColorsUtils.orange1, ColorsUtils.orange2]),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.orange.withOpacity(0.5),
                              BlendMode.dstATop),
                          image: const AssetImage('assets/icons/pagos.png'))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Center(
                        child: ImageIcon(
                          AssetImage('assets/icons/pagos.png'),
                          size: 70,
                          color: ColorsUtils.white,
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        '¿Qué bienes puedo vender?',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Vehiculos livianos y pesados.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Maquinaria y equipo industrial.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Repuestos.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Productos de manufactura.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Equipos electrónicos e informaticos.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Mobiliarios.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Inmuebles.',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '• Reciclaje. ',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 50),
                      SizedBox(height: 20),
                      Divider(
                        color: ColorsUtils.white,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '¿Quiénes pueden vender?',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        'Personas naturales o juridicas. Si eres una empresa, '
                        'selecciona persona jurídica. En caso contrario '
                        'selecciona persona natural. ',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: ColorsUtils.white,
                      ),
                      SizedBox(height: 50),
                      Text(
                        '¿Comó puedo contactarme?',
                        style: TextStyle(
                            color: ColorsUtils.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        'Es muy fácil: Completa el formulario con tus datos y '
                        'nos comunicaremos contigo en un lapso de 3 dias. ',
                        style:
                            TextStyle(color: ColorsUtils.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: web ? size.width * 0.7 : size.width,
                  padding: EdgeInsets.all(web ? 50 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quiero Vender',
                        style: TextStyle(
                            color: ColorsUtils.blue3,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '¡Es hora de recuperar tu capital de trabajo! Dejanos '
                        'tus datos y nos pondremos en contacto contigo.',
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '¿A que categoria pertenecen los activos a liquidar?',
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 38,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorsUtils.grey1),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton(
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          hint: const Text('Seleccionar'),
                          isExpanded: true,
                          items: const [
                            DropdownMenuItem<String>(child: Text('Tecnología'))
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: web ? size.width * 0.7 : size.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Valor estimado de los activos a subastar (S/.)',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 38,
                                      child: TxtFieldBor(
                                          controller: controller.valorCtrl, validator: isNotEmpty,
                                          width: web
                                              ? (size.width * 0.7) / 2.3
                                              : (size.width) / 2.3,
                                          hint: '',
                                          icon: null,
                                          enabledBorder: ColorsUtils.grey1,
                                          focusedBorder: ColorsUtils.blue3)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cantidad de lotes a subastar',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorsUtils.grey1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Seleccionar'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('Tecnología'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Descripción adicional - 500 caracteres',
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(height: 5),
                      TxtFieldBor(
                          controller: controller.descriptionCtrl, validator: isNotEmpty,
                          width: web ? size.width * 0.7 : size.width,
                          hint: '',
                          icon: null,
                          maxLines: 5,
                          enabledBorder: ColorsUtils.grey1,
                          focusedBorder: ColorsUtils.blue3),
                      const SizedBox(height: 20),
                      const Divider(
                        color: ColorsUtils.blue3,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Selecciona el tipo de persona',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: web ? size.width * 0.7 : size.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorsUtils.grey1),
                                            shape: BoxShape.circle),
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.orange1,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Persona natural',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorsUtils.grey1),
                                            shape: BoxShape.circle),
                                        child: Container(
                                          width: 8,
                                          height: 8,
                                          decoration: const BoxDecoration(
                                              color: ColorsUtils.white,
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        'Persona jurídica',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        color: ColorsUtils.blue3,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: web ? size.width * 0.7 : size.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 3.4
                                  : (size.width) / 3.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Nombres',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 38,
                                      child: TxtFieldBor(
                                          controller: controller.nameCtrl, validator: isNotEmpty,
                                          width: web
                                              ? (size.width * 0.7) / 3.4
                                              : (size.width) / 3.4,
                                          hint: '',
                                          icon: null,
                                          enabledBorder: ColorsUtils.grey1,
                                          focusedBorder: ColorsUtils.blue3)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 3.4
                                  : (size.width) / 3.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Tipo de documento',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorsUtils.grey1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Seleccionar'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('DNI'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: web ? (size.width * 0.7) / 2 : (size.width) / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Número de documento',
                              style: TextStyle(fontSize: 17),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                                height: 38,
                                child: TxtFieldBor(
                                    controller: controller.numeroDocCtrl, validator: isNotEmpty,
                                    width: web
                                        ? (size.width * 0.7) / 2
                                        : (size.width) / 2,
                                    hint: '',
                                    icon: null,
                                    enabledBorder: ColorsUtils.grey1,
                                    focusedBorder: ColorsUtils.blue3)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: web ? size.width * 0.7 : size.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 3.4
                                  : (size.width) / 3.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Departamento',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorsUtils.grey1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Seleccionar'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('Lima'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 3.4
                                  : (size.width) / 3.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Provincia',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorsUtils.grey1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Seleccionar'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('Lima'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 3.4
                                  : (size.width) / 3.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Distrito',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    height: 38,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorsUtils.grey1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton(
                                      underline: Container(
                                        height: 0,
                                        color: Colors.transparent,
                                      ),
                                      hint: const Text('Seleccionar'),
                                      isExpanded: true,
                                      items: const [
                                        DropdownMenuItem<String>(
                                            child: Text('Lima'))
                                      ],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: web ? size.width * 0.7 : size.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Correo electrónico',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 38,
                                      child: TxtFieldBor(
                                          controller: controller.correoCtrl, validator: isEmail,
                                          width: web
                                              ? (size.width * 0.7) / 2.3
                                              : (size.width) / 2.3,
                                          hint: '',
                                          icon: null,
                                          enabledBorder: ColorsUtils.grey1,
                                          focusedBorder: ColorsUtils.blue3)),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: web
                                  ? (size.width * 0.7) / 2.3
                                  : (size.width) / 2.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Teléfono Celular',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                      height: 38,
                                      child: TxtFieldBor(
                                          controller: controller.phoneCtrl, validator: isNotEmpty,
                                          width: web
                                              ? (size.width * 0.7) / 2.3
                                              : (size.width) / 2.3,
                                          hint: '',
                                          icon: null,
                                          enabledBorder: ColorsUtils.grey1,
                                          focusedBorder: ColorsUtils.blue3)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        '*Todos los campo son requeridos',
                        style: TextStyle(
                            color: ColorsUtils.orange2,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ButtonWid(
                  width: 307,
                  height: 48,
                  color1: ColorsUtils.blue2,
                  color2: ColorsUtils.blue3,
                  textButt: 'Enviar solicitud',
                  voidCallback: () => null)
            ]),
            const SizedBox(height: 20),
            FooterWid()
          ],
        ),
      ),
    );
  }
}
