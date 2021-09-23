import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'info_subastas_logic.dart';

class InfoSubastasPage extends StatelessWidget {
  final logic = Get.find<InfoSubastasLogic>();

  InfoSubastasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('InfoSubastasPage'),
    );
  }
}
