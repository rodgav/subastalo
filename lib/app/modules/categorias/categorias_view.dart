import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'categorias_logic.dart';

class CategoriasPage extends StatelessWidget {
  final logic = Get.find<CategoriasLogic>();

  CategoriasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('CategoriasPage'),
    );
  }
}
