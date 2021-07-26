import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen_.dart';
import 'package:timer/screens/timer_screen.dart';
import 'package:timer/state/nav_bar_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
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
          StopwatchScreen.routeName: (context) => StopwatchScreen(),
          TimerScreen.routeName: (context) => TimerScreen(),
          OptionsScreen.routeName: (context) => OptionsScreen(),
        },
        home: StopwatchScreen(),
      ),
    );
  }
}
