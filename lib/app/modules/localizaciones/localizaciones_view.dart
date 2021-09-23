import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'localizaciones_logic.dart';

class LocalizacionesPage extends StatelessWidget {
  final logic = Get.find<LocalizacionesLogic>();

  LocalizacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('LocalizacionesPage'),
    );
  }
}
