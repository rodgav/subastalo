import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'administradores_logic.dart';

class AdministradoresPage extends StatelessWidget {
  AdministradoresPage({Key? key}) : super(key: key);
  final logic = Get.find<AdministradoresLogic>();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('AdministradoresPage'),
    );
  }
}
