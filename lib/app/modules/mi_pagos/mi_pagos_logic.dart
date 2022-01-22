import 'package:get/get.dart';
import 'package:subastalo/app/data/models/pago.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';

class MiPagosLogic extends GetxController {
  PagoModel? _pagoModel;

  PagoModel? get pagoModel => _pagoModel;
  final _dataRepository = Get.find<RemoteDataRepository>();

  @override
  void onReady() {
    _pagos();
    super.onReady();
  }

  void _pagos() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _pagoModel = await _dataRepository.pays(token);
      update(['pagos']);
    }
  }

}
