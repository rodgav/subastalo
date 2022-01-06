import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_widget/aceptado.dart';
import 'package:subastalo/app/modules/mi_subasta_detail/mi_subasta_detail_widget/aceptar.dart';

class MiSubastaDetailLogic extends GetxController {
  final String subastaId;

  MiSubastaDetailLogic(this.subastaId);

  final _dataRepository = Get.find<RemoteDataRepository>();
  Subasta? _subasta;

  Subasta? get subasta => _subasta;

  _subastaId() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final subastaModel = await _dataRepository.subastaId(subastaId, token);
      _subasta = subastaModel?.subasta.first;
      update(['subasta']);
    }
  }

  @override
  void onReady() {
    _subastaId();
    super.onReady();
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void aceptar(String subasta) {
    Get.dialog(const AlertDialog(content: Aceptar()));
  }

  void aceptado(String subasta) {
    Get.rootDelegate.popRoute();
    Get.dialog(const AlertDialog(content: Aceptado()));
  }
}
