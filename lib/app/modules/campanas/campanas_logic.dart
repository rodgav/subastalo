import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/modules/campanas/campanas_widget/del_campana.dart';
import 'package:subastalo/app/modules/campanas/campanas_widget/new_campana.dart';

class CampanasLogic extends GetxController {
  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void newCampana() {
    Get.dialog(const AlertDialog(content: NewlCampana()));
  }

  void delCampana() {
    Get.dialog(const AlertDialog(content: DelCampana()));
  }
}
