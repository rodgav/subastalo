import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'perfil_logic.dart';

class PerfilPage extends StatelessWidget {
  final logic = Get.find<PerfilLogic>();

  PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('PerfilPage'),
    );
  }
}
