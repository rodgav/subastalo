import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/campaign.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/campanas/campanas_widget/del_campana.dart';
import 'package:subastalo/app/modules/campanas/campanas_widget/new_campana.dart';

class CampanasLogic extends GetxController {
  final nameCompanCtrl = TextEditingController();
  final codePromCtrl = TextEditingController();
  final ammountDescCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _dataRepository = Get.find<RemoteDataRepository>();

  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  CampaignModel? _campaignModel;

  CampaignModel? get campaignModel => _campaignModel;

  @override
  void onReady() {
    _campanas();
    super.onReady();
  }

  void selectDateStart() async {
    final picked = await showDatePicker(
        locale: AuthService.to.getLocale(),
        context: Get.context!,
        initialDate: selectedStartDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedStartDate.year + 6));
    if (picked != null) {
      selectedStartDate = picked;
      update(['dateStart']);
    }
  }

  void selectDateEnd() async {
    final picked = await showDatePicker(
        locale: AuthService.to.getLocale(),
        context: Get.context!,
        initialDate: selectedEndDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(selectedEndDate.year + 6));
    if (picked != null) {
      selectedEndDate = picked;
      update(['dateEnd']);
    }
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void newCampana() {
    Get.dialog(const AlertDialog(content: NewlCampana()));
  }

  void delCampana() {
    Get.dialog(const AlertDialog(content: DelCampana()));
  }

  void _campanas() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _campaignModel = await _dataRepository.campaign(token);
      update(['campaigns']);
    }
  }

  void saveCampaign() async {
    if (formKey.currentState!.validate()) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final tokenModel = await _dataRepository.createCampaign(
            nameCompanCtrl.text,
            codePromCtrl.text,
            ammountDescCtrl.text.trim(),
            selectedStartDate.toString(),
            selectedEndDate.toString(),
            token);
        if (tokenModel != null) {
          Get.rootDelegate.popRoute();
        } else {
          DialogService.to.snackBar(Colors.red, 'ERROR',
              'Ocurrio un error, vuelva a intentarlo luego');
        }
      }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }
}
