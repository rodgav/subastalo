import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'campanas_logic.dart';

class CampanasPage extends StatelessWidget {
  final logic = Get.find<CampanasLogic>();

  CampanasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('CampanasPage'),
    );
  }
}
