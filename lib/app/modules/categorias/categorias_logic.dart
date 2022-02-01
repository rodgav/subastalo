import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorys.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/modules/categorias/categorias_widget/edit_categoria.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class CategoriasLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();
  final nameUpdCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  CategorysModel? _categoriasModel;

  CategorysModel? get categoriasModel => _categoriasModel;

  @override
  void onReady() {
    _getCategorias();
    super.onReady();
  }

  void _getCategorias() async {
    _categoriasModel = await _dataRepository.categorys();
    update(['categorias']);
  }

  void toBack() {
    Get.rootDelegate.popRoute();
  }

  void editCateg(int idCateg) {
    Get.dialog(AlertDialog(content: EditCategoria(idCateg)));
  }

  void saveEditCateg(int idCateg) async {
      if(nameUpdCtrl.text.isNotEmpty) {
        final token = await AuthService.to.getToken();
        if (token != null) {
          final edit = await _dataRepository.updateCategory(
              nameUpdCtrl.text.trim(), idCateg.toString(), token);
          if (edit) {nameUpdCtrl.clear();
            _getCategorias();
            toBack();
          } else {
            DialogService.to.snackBar(
                ColorsUtils.red, 'ERROR', 'No se pudo actualizar la categoria');
          }
        }
    } else {
      DialogService.to.snackBar(Colors.red, 'ERROR', 'Rellene el formulario');
    }
  }

  void delCateg(int idCateg) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final delete =
          await _dataRepository.deleteCategory(idCateg.toString(), token);
      if (delete) {
        _getCategorias();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo eliminar la categoria');
      }
    }
  }

  void toSubcategory(int idCateg) {
    Get.rootDelegate.offNamed(Routes.subCategorias(idCateg.toString()));
  }

  void saveCategory() async {
    if (nameCtrl.text.isNotEmpty) {
      final token = await AuthService.to.getToken();
      if (token != null) {
        final category =
            await _dataRepository.createCategory(nameCtrl.text.trim(), token);
        if (category != null) {
          _categoriasModel?.categorys.add(category);
          nameCtrl.clear();
          update(['categorias']);
        } else {
          DialogService.to
              .snackBar(ColorsUtils.red, 'ERROR', 'No se creo la categoria');
        }
      }
    } else {
      DialogService.to
          .snackBar(ColorsUtils.red, 'ERROR', 'Complete el campo de texto');
    }
  }
}
