import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'monetizacion_logic.dart';

class MonetizacionPage extends StatelessWidget {
  final logic = Get.find<MonetizacionLogic>();

  MonetizacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MonetizacionPage'),
    );
  }
}
