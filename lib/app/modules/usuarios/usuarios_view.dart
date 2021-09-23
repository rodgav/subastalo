import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'usuarios_logic.dart';

class UsuariosPage extends StatelessWidget {
  final logic = Get.find<UsuariosLogic>();

  UsuariosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('TableroPage'),
    );
  }
}
