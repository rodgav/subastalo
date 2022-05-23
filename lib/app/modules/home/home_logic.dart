import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class HomeLogic extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKeyHome = GlobalKey<ScaffoldState>();
  final TextEditingController search = TextEditingController();
  final _remoteDataRepository = Get.find<RemoteDataRepository>();
  CategorysModel? _categoriasModel;
  SubCategory? _selected;

  CategorysModel? get categoriasModel => _categoriasModel;

  SubCategory? get selected => _selected;

  @override
  void onReady() {
    _getCategorias();
    super.onReady();
  }

  void toHome(String? location) {
    if (location != '/' &&
        location != '/home' &&
        location != '/home/subastas') {
      Get.rootDelegate.offNamed(Routes.home);
    }
  }

  void _getCategorias() async {
    _categoriasModel = await _remoteDataRepository.categorys();
    update(['categorias']);
  }

  void subCategorySelect(SubCategory? value) {
    _selected = value;
    update(['categorias']);
  }

  void toLogin() {
    Get.rootDelegate.toNamed(Routes.login);
  }

  void toVender() {
    Get.rootDelegate.toNamed(Routes.vender);
  }

  void toDashboard() {
    Get.rootDelegate.toNamed(Routes.dashboard);
  }

  void subastaSearch(String value) {}
}
