import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchProvier extends ChangeNotifier {
  Stopwatch _sw = Stopwatch();
  String _returnString = '00:00';
  Timer t;

  String get time => _returnString;

  bool get isRunning => _sw.isRunning;

  String get elapsedTimeString => _returnString;

  void start() {
    _sw.start();
    updateSWString();
    notifyListeners();
  }

  void stop() {
    _sw.stop();
  }

  void pause() {
    _sw.stop();
  }

  void unpause() {
    if (_sw.isRunning) {
      _sw.start();
    }
  }

  void reset() {
    _sw.reset();
  }

  void updateSWString() {
    Timer.periodic(Duration(seconds: 1), (t) {
      _returnString = _buildReturnString();
      print(_returnString);
      notifyListeners();
    });
  }

  String _buildReturnString() {
    // Builds an appropieate return string gor a stopwatch, in the format
    // HH:MM:SS
    // ie 01:23:45

    String str = '';

    String _buildSeconds() {
      if ((_sw.elapsed.inSeconds % 60) > 9) {
        return '${_sw.elapsed.inSeconds % 60}';
      } else {
        return '0${_sw.elapsed.inSeconds % 60}';
      }
      // return _sw.elapsed.inSeconds >9 ? '${_sw.elapsed.inSeconds % 60}' : '0${_sw.elapsed.inSeconds % 60};
    }

    String _buildMinutes() {
      return ((_sw.elapsed.inMinutes % 60) > 9)
          ? '${_sw.elapsed.inMinutes % 60}: ${_buildSeconds()}'
          : '0${_sw.elapsed.inMinutes}:${_buildSeconds()}';
    }

    if (_sw.elapsed.inHours >= 1) {
      str += "${_sw.elapsed.inHours < 10 ? 0 : ''}${_sw.elapsed.inHours}";
    }
    str = str + _buildMinutes();
    return str;
  }
}
