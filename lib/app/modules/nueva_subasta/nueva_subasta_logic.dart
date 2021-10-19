import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NuevaSubastaLogic extends GetxController {
  String selected = '1';
  DateTime selectedDate = DateTime.now();

  void changeSelected(String selected) {
    this.selected = selected;
    update(['selected']);
  }

  void selectDate() async {
    final picked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedDate.year + 5));
    if (picked != null) {
      selectedDate = picked;
      update(['date']);
    }
  }
}
