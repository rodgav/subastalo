import 'package:get/get.dart';
import 'package:subastalo/app/data/models/favoritas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';

class MiFavoritasLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  FavoritaModel? _subastaModel;

  FavoritaModel? get subastaModel => _subastaModel;

  @override
  void onReady() {
    _misSubastas();
    super.onReady();
  }

  void _misSubastas() async {
    print('execute misubastaPendiente');
    final token = await AuthService.to.getToken();
    if (token != null) {
      _subastaModel = await _dataRepository.favoritas(token);
      update(['misSubastas']);
    }
  }
}
