import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/utils/colors_utils.dart';

import 'mensaje_detail_logic.dart';

class MensajeDetailPage extends StatelessWidget {
  final logic = Get.find<MensajeDetailLogic>();

  MensajeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool web = size.width > 800;
    return LayoutBuilder(builder: (__, constraints) {
      final width = constraints.maxWidth;
      return SingleChildScrollView(
          child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: web ? 50 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('MENSAJES',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const Text('Aquí podrás gestionar tus mensajes',
                      style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 20),
                  const Divider(height: 20),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.email,
                            size: 14,
                            color: ColorsUtils.red,
                          ),
                          SizedBox(width: 10),
                          Text('Albert Herrera',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ), const SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          SizedBox(
                            width: 14,
                            height: 14,
                          ),
                          SizedBox(width: 10),
                          Text('Resumen del contenido o mensaje recibido...',
                              style: TextStyle()),
                        ],
                      ),
                       const SizedBox(height: 20),
                       Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            SizedBox(
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                  'Resumen del contenido o mensaje recibido... '
                                  'Resumen del contenido o mensaje recibido... '
                                  'Resumen del contenido o mensaje recibido... '
                                  'Resumen del contenido o mensaje recibido... '
                                  'Resumen del contenido o mensaje recibido... '
                                  'Resumen del contenido o mensaje recibido... ',
                                  style: TextStyle()),
                            ),
                          ],
                        ),
                    ],
                  ),
                ],
              )));
    });
  }
}
