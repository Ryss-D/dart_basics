import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:timer/state/stopwatch_provider.dart';
import 'package:timer/widgets/app_bar.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';
import 'package:timer/widgets/play_button.dart';
import 'package:timer/widgets/reset_button.dart';
import 'package:timer/widgets/timer_running_with_botton_button.dart';

class StopwatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";

  @override
  Widget build(BuildContext context) {
    return Consumer<StopwatchProvier>(
      builder: (ctx, state, _) => Scaffold(
          appBar: buildAppBar(context: ctx, reset: state.reset),
          body: state.isStarted
              ? TimerRunningWithBottomButton(
                  displayString: state.elapsedTimeString,
                  isRunning: state.isRunning,
                  pauseFunc: state.pause,
                  unpauseFunc: state.unpause)
              : Center(
                  child: PlayButton(
                    onPressed: state.start,
                    size: 200,
                  ),
                ),
          bottomNavigationBar: BottomNavBar()
          // widget. allows to acces to information on the widget instead of the state, that is were we ara now:w,
          ),
    );
  }
}
