import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class MiSubastaLogic extends GetxController {
  void toMiSubastaDetail(String subastaId) {
    Get.rootDelegate.toNamed(Routes.misubastasDetail(subastaId));
  }

  void newSubasta(Size size) {
    Get.rootDelegate.toNamed(Routes.newSubastas);
  }
}
