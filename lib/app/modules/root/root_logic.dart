import 'package:get/get.dart';
import 'package:subastalo/app/data/models/categorias.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class RootLogic extends GetxController {
  final _localDataRepository = Get.find<LocalDataRepository>();
  CategoriasModel? _categoriasModel;

  CategoriasModel? get categoriasModel => _categoriasModel;

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
    _categoriasModel = await _localDataRepository.getCategorias();
    update(['categorias']);
  }
}
