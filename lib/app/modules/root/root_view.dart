import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/global_widgets/categoria.dart';
import 'package:subastalo/app/global_widgets/loading.dart';
import 'package:subastalo/app/global_widgets/no_data.dart';
import 'package:subastalo/app/global_widgets/txt_field_circ.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

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
