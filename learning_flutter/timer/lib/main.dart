import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/options_screen.dart';
import 'screens/stopwatch_screen.dart';
import 'screens/timer_screen.dart';
import 'state/nav_bar_state.dart';
import 'state/stopwatch_provider.dart';

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
            errorColor: Color.fromRGBO(101, 0, 11, 1),
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
          home: StopwatchScreen(),
        ),
      ),
    );
  }
}
