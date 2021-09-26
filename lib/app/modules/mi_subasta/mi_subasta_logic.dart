import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class MiSubastaLogic extends GetxController {


  void toMiSubastaDetail(String subastaId) {
    debugPrint('MiSubastaLogic toMiSubastaDetail $subastaId');
    Get.rootDelegate.toNamed(Routes.misubastasDetail(subastaId));
  }

  @override
  void onInit() {
    debugPrint('MiSubastaLogic');
    super.onInit();
  }
}
