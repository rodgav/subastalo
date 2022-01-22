import 'package:get/get.dart';
import 'package:subastalo/app/data/models/message.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';

class MensajesLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  MessageModel? _messageModel;


  MessageModel? get messageModel => _messageModel;

  @override
  void onReady() {
    _mensajes();
    super.onReady();
  }
  void toMensajeDetail(String mensajeId) {
    Get.rootDelegate.toNamed(Routes.mensajesDetail(mensajeId));
  }

  void _mensajes() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _messageModel = await _dataRepository.message(token);
      update(['messages']);
    }
  }
}
