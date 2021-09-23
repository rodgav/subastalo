import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pagos_logic.dart';

class PagosPage extends StatelessWidget {
  final logic = Get.find<PagosLogic>();

  PagosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('PagosPage'),
    );
  }
}
