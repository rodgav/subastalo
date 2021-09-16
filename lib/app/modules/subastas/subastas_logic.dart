import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/routes/app_pages.dart';

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

  void toSubastaDetail(Subasta subasta) {
    Get.rootDelegate
        .toNamed(Routes.subastasDetail(subasta.id), arguments: subasta);
  }
}
