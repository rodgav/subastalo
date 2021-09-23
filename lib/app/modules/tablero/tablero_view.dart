import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tablero_logic.dart';

class TableroPage extends StatelessWidget {
  final logic = Get.find<TableroLogic>();

  TableroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('TableroPage'),
    );
  }
}
