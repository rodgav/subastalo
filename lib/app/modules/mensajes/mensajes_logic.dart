import 'package:get/get.dart';
import 'package:subastalo/app/data/models/message.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/remote_data_repository.dart';
import 'package:subastalo/app/data/services/auth_service.dart';
import 'package:subastalo/app/data/services/dialog_service.dart';
import 'package:subastalo/app/routes/app_pages.dart';
import 'package:subastalo/utils/colors_utils.dart';

class MensajesLogic extends GetxController {
  final _dataRepository = Get.find<RemoteDataRepository>();

  MessageModel? _messageModel;

  MessageModel? get messageModel => _messageModel;

  @override
  void onReady() {
    _mensajes();
    super.onReady();
  }

  void toMensajeDetail(int mensajeId) {
    Get.rootDelegate.toNamed(Routes.mensajesDetail(mensajeId.toString()));
  }

  void deleteMessage(int mensajeId) async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      final response = await _dataRepository.deleteMessage(token, mensajeId);
      if (response) {
        _mensajes();
      } else {
        DialogService.to.snackBar(
            ColorsUtils.red, 'ERROR', 'No se pudo eliminar el mensaje');
      }
    }
  }

  void _mensajes() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _messageModel = await _dataRepository.message(token);
      update(['messages']);
    }
  }
}
