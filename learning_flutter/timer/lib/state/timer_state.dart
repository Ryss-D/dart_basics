import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  Timer t;
  var startingMinutes = "25".obs;
  var startingSeconds = RxString("0"); // Rx<int>(0) they are equivalent
  var displayString = Rx<String>("25:00");
  var isRunning = false.obs;
  var isStarted = Rx<bool>(false);

  var minutesInputController = TextEditingController().obs..value.text = "25";
  // minutesInputController.value.text double dot value notation below are equivalent to this
  // the doble dot just means copy the value onthis line and make value with that
  var secondsInputController = TextEditingController().obs..value.text = "00";

  void start() {
    print("Starting timer");
    if (!_tsw.isRunning) {
      displayString.value = updateDisplayString();
      _tsw.start();
      periodicUpdateDisplayString();
      isRunning.value = true;
      isStarted.value = true;
    }
  }

  void pause() {
    if (_tsw.isRunning) {
      _tsw.stop();
      print("stopping perioridic updated");
      t.cancel(); //stops the periordic task to save ram effort and prevent a memory leak
      isRunning.value = false;
    }
  }

  void unpause() {
    if (!_tsw.isRunning) {
      _tsw.start();
      //periodic function
      periodicUpdateDisplayString();
      isRunning.value = true;
    }
  }

  void reset() {
    _tsw.stop();
    _tsw.reset();
    //stop periodic function
    t.cancel();
    isRunning.value = false;
    isStarted.value = false;
  }

  void periodicUpdateDisplayString() {
    print("Starting periodic update");
    t = Timer.periodic(Duration(seconds: 1), (t) {
      displayString.value = updateDisplayString();
      print(displayString.value);
    });
  }

  String updateDisplayString() {
    String str = "";
    int startingMin = int.parse(minutesInputController.value.text);
    // in this time we have to pass. text that because when we just use .value passes the controller
    int startingSec = int.parse(secondsInputController.value.text);

// 24,59
    if ((startingSec - _tsw.elapsed.inSeconds % 60) < 0) {
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

  void disponse() {
    //thats a cleanes function
    t.cancel();
    minutesInputController.value.dispose();
    secondsInputController.value.dispose();
  }
}
