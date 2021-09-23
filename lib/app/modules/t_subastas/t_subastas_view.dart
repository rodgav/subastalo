import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 't_subastas_logic.dart';

class TSubastasPage extends StatelessWidget {
  final logic = Get.find<TSubastasLogic>();

  TSubastasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('TSubastasPage'),
    );
  }
}
