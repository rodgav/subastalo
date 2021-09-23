import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'comentarios_logic.dart';

class ComentariosPage extends StatelessWidget {
  final logic = Get.find<ComentariosLogic>();

  ComentariosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ComentariosPage'),
    );
  }
}
