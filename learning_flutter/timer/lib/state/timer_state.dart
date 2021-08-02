import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TimerState extends GetxController {
  Stopwatch _tsw = Stopwatch();
  Timer t, t2;

// lets create the audio player
  final player = AudioCache();

  var startingMinutes = "25".obs;
  var startingSeconds = RxString("0"); // Rx<int>(0) they are equivalent
  var displayString = Rx<String>("25:00");
  var isRunning = false.obs;
  var isStarted = Rx<bool>(false);
  var isTimerFinished = Rx<bool>(false);

  var showErrorColor = RxBool(false);

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
      isTimerFinished.value = false;
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
    if (isTimerFinished.value) {
      t2.cancel();
    }
    isRunning.value = false;
    isStarted.value = false;
    isTimerFinished.value = false;
    showErrorColor.value = false;
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

    if (_tsw.elapsed.inMinutes >= startingMin &&
        _tsw.elapsed.inSeconds >= startingSec) {
      setTimerToFinished();
      str = "00:00";
    } else {
      if ((startingSec - _tsw.elapsed.inSeconds % 60) < 0) {
        str +=
            "${(startingMin - _tsw.elapsed.inMinutes - 1).toString().padLeft(2, "0")}:";
      } else {
        str +=
            "${(startingMin - _tsw.elapsed.inMinutes).toString().padLeft(2, "0")}:";
      }
// padLeft/padRight will insert some character to make itbe equal inlenght to wahever
// value we ser
      str +=
          "${((startingSec - _tsw.elapsed.inSeconds) % 60).toString().padLeft(2, "0")}";
    }
    return str;

// 24,59
  }

  void setTimerToFinished() {
    t.cancel();
    isTimerFinished.value = true;
    int i = 0;
    t2 = Timer.periodic(Duration(milliseconds: 500), (t2) {
      showErrorColor.value = !showErrorColor.value;

// this will play the sound wvery 4th time this functios runs
      if (i % 4 == 0) {
        player.play('alarm.wav', volume: 0.5);
      }
      i++;
    });
  }

  void dispose() {
    //thats a cleanes function
    t.cancel();
    t2.cancel();
    minutesInputController.value.dispose();
    secondsInputController.value.dispose();
  }
}
