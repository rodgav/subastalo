import 'package:get/get.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';

class SubastasDetailLogic extends GetxController {
  final String subastaId;

  SubastasDetailLogic(this.subastaId);

  final _localDataRepository = Get.find<LocalDataRepository>();
  Subasta? _subasta;

  Subasta? get subasta => _subasta;

  @override
  void onReady() {
    _getSubasta(subastaId);
    super.onReady();
  }

  void _getSubasta(String subastaId) async {
    _subasta = await _localDataRepository.getSubastaId(subastaId);
    update(['subasta']);
  }
}
