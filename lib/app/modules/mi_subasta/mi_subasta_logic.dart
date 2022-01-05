import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class MiSubastaLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  SubastaModel? _subastaModel;

  SubastaModel? get subastaModel => _subastaModel;

  @override
  void onReady() {
    _misSubastas();
    super.onReady();
  }

  void toMiSubastaDetail(String subastaId) {
    Get.rootDelegate.toNamed(Routes.misubastasDetail(subastaId));
  }

  void newSubasta(Size size) {
    Get.rootDelegate.toNamed(Routes.newSubastas);
  }
  void _misSubastas ()async{
    print('execute misSubastas');
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subastaModel = await _dataRepository.misSubastas(token);
      update(['misSubastas']);
    }else{
      print('token error');
    }
  }
}
