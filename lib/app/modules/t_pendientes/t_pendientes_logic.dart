import 'package:get/get.dart';

import 'package:subastalo/app/data/models/subasta.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class TPendientesLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  SubastaModel? _subastaModel;

  SubastaModel? get subastaModel => _subastaModel;

  @override
  void onReady() {
    _misSubastas();
    super.onReady();
  }

  void _misSubastas() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subastaModel = await _dataRepository.pendientes(token);
      update(['subastas']);
    }
  }

  void aprove(int idSubasta) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final aprove =
          await _dataRepository.updateStateSubas(idSubasta, 2, token);
      if(aprove){
        _misSubastas();
      }else{
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo aprobar la subasta');
      }
    }
  }

  void block(int idSubasta) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final block = await _dataRepository.updateStateSubas(idSubasta, 3, token);
      if(block){
        _misSubastas();
      }else{
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo bloquear la subasta');
      }
    }
  }
}
