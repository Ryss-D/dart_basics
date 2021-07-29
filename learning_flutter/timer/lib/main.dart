import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen.dart';
import 'package:timer/screens/timer_screen.dart';
import 'package:timer/state/nav_bar_state.dart';
import 'package:timer/state/stopwatch_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: ChangeNotifierProvider(
        create: (_) => StopwatchProvier(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.white30,
            backgroundColor: Colors.pink[200],
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 75,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          routes: {
            StopwatchScreen.routeName: (context) => StopwatchScreen(),
            TimerScreen.routeName: (context) => TimerScreen(),
            OptionsScreen.routeName: (context) => OptionsScreen(),
          },
          home: TimerScreen(),
        ),
      ),
    );
  }
}
