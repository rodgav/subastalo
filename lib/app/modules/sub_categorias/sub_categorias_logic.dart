import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/sub_categorias/sub_categorias_widget/edit_sub_categoria.dart';
import 'package:subastalo/utils/colors_utils.dart';

class SubCategoriasLogic extends GetxController {
  final String categoriaId;

  SubCategoriasLogic(this.categoriaId);

  final _dataRepository = Get.find<RemoteDataRepository>();
  final nameCtrl = TextEditingController();
  final nameUpdCtrl = TextEditingController();

  List<SubCategory>? _subCategorys;

  List<SubCategory>? get subCategorys => _subCategorys;

  @override
  void onReady() {
    _getSubCategorys();
    super.onReady();
  } void toBack() {
    Get.rootDelegate.popRoute();
  }

  void saveEditSubCateg(int idSubCateg) async {
    if(nameUpdCtrl.text.isNotEmpty) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final edit = await _dataRepository.updateSubCategory(
            nameUpdCtrl.text.trim(), idSubCateg.toString(), token);
        if (edit) {
          _getSubCategorys();
          nameUpdCtrl.clear();
          toBack();
        } else {
          DialogService.to.snackBar(
              ColorsUtils.red, 'ERROR', 'No se pudo actualizar la sub-categoría');
        }
      }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }
  _getSubCategorys() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subCategorys = await _dataRepository.subCategorys(token, categoriaId);
      update(['subcategorias']);
    }
  }

  void editSubCateg(int id) {
    Get.dialog(AlertDialog(content: EditSubCategoria(id)));
  }

  void delSubCateg(int id) async{
    final token = await AuthService.to.getToken();
    if (token != null) {
      final delete =
          await _dataRepository.deleteSubCategory(id.toString(), token);
      if (delete) {
        _getSubCategorys();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo eliminar la sub-categoria');
      }
    }
  }

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
