import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class StopwatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Stopwatch Screen',
              style: Theme.of(context).textTheme.headline1)),
      bottomNavigationBar: BottomNavBar(
          // widget. allows to acces to information on the widget instead of the state, that is were we ara now:w
          ),
    );
  }
}
