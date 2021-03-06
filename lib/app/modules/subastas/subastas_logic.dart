import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/global_widgets/button_widget.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubastasLogic extends GetxController {
  final _localDataRepository = Get.find<LocalDataRepository>();
  SubastasModel? _subastasModel;

  SubastasModel? get subastasModel => _subastasModel;

  @override
  void onReady() {
    _getSubastas();
    super.onReady();
  }

  Future<void> _getSubastas() async {
    _subastasModel = await _localDataRepository.getSubastas();
    update(['subastas']);
  }



  void toSubastaDetail(String subastaId) {
    Get.rootDelegate.toNamed(Routes.subastasDetail(subastaId));
  }
}
