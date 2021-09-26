import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

import 'root_logic.dart';

class RootPage extends StatelessWidget {
  RootPage({Key? key}) : super(key: key);

  final logic = Get.find<RootLogic>();

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, current) {
      debugPrint('title ${current?.location}');
      return Scaffold(
          body: GetRouterOutlet(initialRoute: Routes.home));
    });
  }
}
