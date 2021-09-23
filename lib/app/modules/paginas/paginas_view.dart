import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'paginas_logic.dart';

class PaginasPage extends StatelessWidget {
  final logic = Get.find<PaginasLogic>();

  PaginasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('PaginasPage'),
    );
  }
}
