import 'dart:async';

import 'package:get/get.dart';

class VivoLogic extends GetxController {
  //subasta in live
  Timer? _timer;
  final RxInt _end = 5.obs;
  final RxInt _start = 0.obs;
  bool chatView = false;

  int get end => _end.value;

  int get start => _start.value;

  @override
  void onReady() {
    _endTimer();
    super.onReady();
  }

  void _endTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (end == 0) {
          timer.cancel();
          chatView = true;
          update(['chat']);
          _startTimer();
        } else {
          _end.value--;
        }
      },
    );
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        _start.value++;
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
