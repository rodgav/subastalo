import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPaginaLogic extends GetxController {
  final titleCtrl = TextEditingController();
  final pageCtrl = TextEditingController();
  void toBack() {
    Get.rootDelegate.popRoute();
  }
}
