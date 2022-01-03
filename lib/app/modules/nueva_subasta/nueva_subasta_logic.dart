import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NuevaSubastaLogic extends GetxController {
  final titleCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final dateCtrl = TextEditingController();
  final urlVideoCtrl = TextEditingController();
  final idVendCtrl = TextEditingController();
  final nameVendCtrl = TextEditingController();
  final nameBussnCtrl = TextEditingController();
  final emailBussnCtrl = TextEditingController();
  final phoneBussnCtrl = TextEditingController();
  final addreBussnCtrl = TextEditingController();
  final brandCtrl = TextEditingController();
  final modelCtrl = TextEditingController();
  final yearCtrl = TextEditingController();
  final mileageCtrl = TextEditingController();
  final fuelCtrl = TextEditingController();
  final detailsCtrl = TextEditingController();
  String selected = '1';
  DateTime selectedDate = DateTime.now();

  void changeSelected(String selected) {
    this.selected = selected;
    update(['selected']);
  }

  void selectDate() async {
    final picked = await showDatePicker(
        locale: const Locale('es', 'es_ES'),
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedDate.year + 1));
    if (picked != null) {
      selectedDate = picked;
      update(['date']);
    }
  }
}
