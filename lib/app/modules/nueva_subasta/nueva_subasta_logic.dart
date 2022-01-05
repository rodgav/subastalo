import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';

class NuevaSubastaLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();
  final titleCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
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
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  String selected = '1';
  DateTime selectedDate = DateTime.now();
  List<PlatformFile> files = [];

  void filePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg'],
        allowMultiple: true);
    if (result != null) {
      if (files.length + result.files.length < 11) {
        files.addAll(result.files);
        //files = result.files.map((file) => file).toList();
      }
    }
    update(['images']);
  }

  void changeSelected(String selected) {
    this.selected = selected;
    update(['selected']);
  }

  void selectDate() async {
    final picked = await showDatePicker(
        locale: AuthService.to.getLocale(),
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedDate.year + 6));
    if (picked != null) {
      selectedDate = picked;
      print('selectedDate ${selectedDate}');
      update(['date']);
    }
  }

  void createNewSubasta() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      if (titleCtrl.text.isNotEmpty &&
          priceCtrl.text.isNotEmpty &&
          urlVideoCtrl.text.isNotEmpty &&
          idVendCtrl.text.isNotEmpty &&
          nameVendCtrl.text.isNotEmpty &&
          nameBussnCtrl.text.isNotEmpty &&
          emailBussnCtrl.text.isNotEmpty &&
          phoneBussnCtrl.text.isNotEmpty &&
          addreBussnCtrl.text.isNotEmpty &&
          brandCtrl.text.isNotEmpty &&
          modelCtrl.text.isNotEmpty &&
          yearCtrl.text.isNotEmpty &&
          mileageCtrl.text.isNotEmpty &&
          fuelCtrl.text.isNotEmpty &&
          detailsCtrl.text.isNotEmpty) {
        if (files.length == 10) {
          DialogService.to.openDialog();
          final subasta = await _dataRepository.createSubasta(
              1,
              1,
              1,
              1,
              titleCtrl.text.trim(),
              priceCtrl.text.trim(),
              selectedDate.toString(),
              brandCtrl.text.trim(),
              modelCtrl.text.trim(),
              yearCtrl.text.trim(),
              mileageCtrl.text.trim(),
              fuelCtrl.text.trim(),
              detailsCtrl.text.trim(),
              token);
          DialogService.to.closeDialog();
          if (subasta != null) {
            DialogService.to.openDialog();
            await _dataRepository.createVendedorSubasta(
                subasta.id,
                nameVendCtrl.text.trim(),
                nameBussnCtrl.text.trim(),
                emailBussnCtrl.text.trim(),
                addreBussnCtrl.text.trim(),token);
            DialogService.to.closeDialog();
            DialogService.to.openDialog();
            await _dataRepository.createMediaSubasta(
                files[0],
                files[1],
                files[2],
                files[3],
                files[4],
                files[5],
                files[6],
                files[7],
                files[8],
                files[9],
                urlVideoCtrl.text.trim(),
                subasta.id,token);
            DialogService.to.closeDialog();
          } else {
            DialogService.to
                .snackBar(Colors.red, 'ERROR', 'No se pudo crear la subasta');
          }
        } else {
          DialogService.to
              .snackBar(Colors.red, 'ERROR', 'Se necesitan 10 fotografías');
        }
      } else {
        DialogService.to
            .snackBar(Colors.red, 'ERROR', 'Todos los campos son requeridos');
      }
    }
  }
}
