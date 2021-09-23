import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mensajes_logic.dart';

class MensajesPage extends StatelessWidget {
  final logic = Get.find<MensajesLogic>();

  MensajesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MensajesPage'),
    );
  }
}
