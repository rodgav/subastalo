import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mi_subasta_logic.dart';

class MiSubastaPage extends StatelessWidget {
  final logic = Get.find<MiSubastaLogic>();

  MiSubastaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MiSubastaPage'),
    );
  }
}
