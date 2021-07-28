import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:timer/state/stopwatch_provider.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class StopwatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => StopwatchProvier(),
          child: Consumer<StopwatchProvier>(
            // ignore: missing_return
            builder: (ctx, state, _) {
              if (state.isRunning) {
                return Center(
                  child: Text(state.elapsedTimeString,
                      style: Theme.of(context).textTheme.headline1),
                );
              } else {
                return Center(
                  child: GestureDetector(
                    onTap: state.start,
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 200,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                );
              }
            },
          ),
        ),
        bottomNavigationBar: BottomNavBar()
        // widget. allows to acces to information on the widget instead of the state, that is were we ara now:w,
        );
  }
}
