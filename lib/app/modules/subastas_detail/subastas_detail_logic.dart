import 'dart:async';

import 'package:get/get.dart';
import 'package:subastalo/app/data/models/images_subastas.dart';
import 'package:subastalo/app/data/models/subastas.dart';
import 'package:subastalo/app/data/repositorys/local_repositorys/local_data_repository.dart';
import 'package:subastalo/app/modules/subastas_detail/widgets/subasta_en_vivo.dart';

class SubastasDetailLogic extends GetxController {
  final String subastaId;

  SubastasDetailLogic(this.subastaId);

  final _localDataRepository = Get.find<LocalDataRepository>();
  Subasta? _subasta;
  List<ImagesSubasta> _imagesSubasta = [];

  Subasta? get subasta => _subasta;

  List<ImagesSubasta> get imagesSubasta => _imagesSubasta;

  @override
  void onReady() {
    _getSubasta(subastaId);
    super.onReady();
  }

  void _getSubasta(String subastaId) async {
    _subasta = await _localDataRepository.getSubastaId(subastaId);
    _imagesSubasta = await _localDataRepository.getImagesSubastas(subastaId);
    update(['subasta', 'images']);
  }

  void subasEnVivo(String subastaId) {
    Get.dialog(const SubastaEnVivo());
  }

  //subasta in live
  Timer? _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
        } else {
          _start--;
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
