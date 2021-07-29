import 'dart:async';

import 'package:get/get.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  Timer t;
  var startingMinutes = "25".obs;
  var startingSeconds = RxString("0"); // Rx<int>(0) they are equivalent
  var displayString = Rx<String>("25:00");
  var isRunning = false.obs;

  void start() {
    print("Starting timer");
    if (!_tsw.isRunning) {
      _tsw.start();
      periodicUpdateDisplayString();
      isRunning.value = true;
    }
  }

  void pause() {
    if (_tsw.isRunning) {
      _tsw.stop();
    }
  }

  void unpause() {
    if (!_tsw.isRunning) {
      _tsw.start();
      //periodic function
    }
  }

  void reser() {
    _tsw.reset();
    //stop periodic function
  }

  void periodicUpdateDisplayString() {
    print("Starting periodic update");
    Timer.periodic(Duration(seconds: 1), (t) {
      displayString.value = updateDisplayString();
      print(displayString.value);
    });
  }

  String updateDisplayString() {
    String str = "";
    int startingMin = int.parse(startingMinutes.value);
    int startingSec = int.parse(startingSeconds.value);

// 24,59
    if ((_tsw.elapsed.inSeconds % 60) > 0) {
      str += "${startingMin - _tsw.elapsed.inMinutes - 1}:";
    } else {
      str += "${startingMin - _tsw.elapsed.inMinutes}:";
    }
// padLeft/padRight will insert some character to make itbe equal inlenght to wahever
// value we ser
    str +=
        "${((startingSec - _tsw.elapsed.inSeconds) % 60).toString().padLeft(2, "0")}";
    return str;
  }
}
