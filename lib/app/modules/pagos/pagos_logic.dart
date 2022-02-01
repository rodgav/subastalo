import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/pago.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/utils/colors_utils.dart';

class PagosLogic extends GetxController {
  final nameCtrl = TextEditingController();
  final descripCtrl = TextEditingController();
  PagoModel? _pagoModel;

  PagoModel? get pagoModel => _pagoModel;
  final _dataRepository = Get.find<RemoteDataRepository>();

  @override
  void onReady() {
    _pagos();
    super.onReady();
  }

  void _pagos() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _pagoModel = await _dataRepository.pays(token);
      update(['pagos']);
    }
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void aprobar(int idPay) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final response = await _dataRepository.updateStatePay(token, idPay, 2);
      if (response) {
        Get.rootDelegate.popRoute();
        _pagos();
      } else {
        DialogService.to
            .snackBar(ColorsUtils.red, 'ERROR', 'No se pudo aprobar el pago');
      }
    }
  }

  void rechazar(int idPay) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final response = await _dataRepository.updateStatePay(token, idPay, 3);
      if (response) {
        Get.rootDelegate.popRoute();
        _pagos();
      } else {
        DialogService.to
            .snackBar(ColorsUtils.red, 'ERROR', 'No se pudo rechazar el pago');
      }
    }
  }
}
