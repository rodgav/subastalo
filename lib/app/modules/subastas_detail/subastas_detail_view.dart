import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/footer.dart';

import 'subastas_detail_logic.dart';

class SubastasDetailPage extends StatelessWidget {
  const SubastasDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SubastasDetailLogic>(builder: (logic) {
      return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [FooterWid()])),
      );
    });
  }
}
