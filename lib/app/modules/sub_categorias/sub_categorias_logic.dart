import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubCategoriasLogic extends GetxController {
  final String categoriaId;

  SubCategoriasLogic(this.categoriaId);

  final _dataRepository = Get.find<RemoteDataRepository>();
  final nameCtrl = TextEditingController();

  List<SubCategory>? _subCategorys;

  List<SubCategory>? get subCategorys => _subCategorys;

  @override
  void onReady() {
    _getSubCategorys();
    super.onReady();
  }

  _getSubCategorys() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subCategorys = await _dataRepository.subCategorys(token, categoriaId);
      update(['subcategorias']);
    } else {
      print('token error');
    }
  }

  void editSubCateg(int id) {}

  void delSubCateg(int id) {}

  void saveSubCategory() async {
    if (nameCtrl.text.isNotEmpty) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final subCategory = await _dataRepository.createSubCategory(
            categoriaId, nameCtrl.text.trim(), token);
        if (subCategory != null) {
          _subCategorys?.add(subCategory);
          nameCtrl.clear();
          update(['subcategorias']);
        } else {
          DialogService.to.snackBar(
              ColorsUtils.red, 'ERROR', 'No se creo la sub-categoria');
        }
      }
    } else {
      DialogService.to
          .snackBar(ColorsUtils.red, 'ERROR', 'Complete el campo de texto');
    }
  }
}
