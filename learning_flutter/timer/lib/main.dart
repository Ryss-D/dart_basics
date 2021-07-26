import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen_.dart';
import 'package:timer/screens/timer_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;
  void _setIndex(index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white54,
        backgroundColor: Colors.pink,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        StopwatchScreen.routeName: (context) => StopwatchScreen(
              screenIndex: _screenIndex,
              setIndexCallback: _setIndex,
            ),
        TimerScreen.routeName: (context) => TimerScreen(
              screenIndex: _screenIndex,
              setIndexCallback: _setIndex,
            ),
        OptionsScreen.routeName: (context) => OptionsScreen(
              screenIndex: _screenIndex,
              setIndexCallback: _setIndex,
            ),
      },
      home: StopwatchScreen(
          screenIndex: _screenIndex, setIndexCallback: _setIndex),
    );
  }
}
