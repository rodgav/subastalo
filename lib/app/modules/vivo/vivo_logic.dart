import 'dart:async';

import 'package:get/get.dart';

class VivoLogic extends GetxController {
  //subasta in live
  Timer? _timer;
  RxInt _start = 10.obs;

  int get start => _start.value;

  @override
  void onReady() {
    _startTimer();
    super.onReady();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          timer.cancel();
        } else {
          _start.value--;
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
