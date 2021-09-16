import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/home/home_logic.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (_) {
      return Scaffold(
          body: GetRouterOutlet(
              initialRoute: Routes.subastas, key: Get.nestedKey(Routes.home)));
    });
  }
}
