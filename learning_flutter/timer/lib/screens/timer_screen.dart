import 'package:flutter/material.dart';
import '../state/timer_state.dart';
import '../widgets/app_bar.dart';
import '../widgets/play_button.dart';
import '../widgets/timer_running_with_botton_button.dart';
import 'package:get/get.dart';

import '../widgets/bottom_nav_bar.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = "/timer-screen";
  @override
  Widget build(BuildContext context) {
    final TimerState state = Get.put(TimerState());

    return Scaffold(
      appBar: buildAppBar(context: context, reset: state.reset),
      body: Obx(() {
        if (state.isTimerFinished.value) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(state.displayString.value,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            color: state.showErrorColor.value
                                ? Theme.of(context).errorColor
                                : Theme.of(context).accentColor,
                          )),
                ),
              ),
              Expanded(
                child: Container(),
              )
            ],
          );
        } else {
          if (!state.isStarted.value) {
            return Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        child: PlayButton(onPressed: state.start, size: 200))),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(right: 10),
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: TextField(
                                // onChanged: () {},// thats a option to pass the states
                                controller: state.minutesInputController.value,
                                keyboardType: TextInputType.number,
                                maxLength: 3,
                                textAlign: TextAlign.end,
                                style: Theme.of(context).textTheme.headline1
                                  ..copyWith(
                                    color: Theme.of(context).accentColor,
                                  ))),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(':',
                              style: Theme.of(context).textTheme.headline1),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: TextField(
                                controller: state.secondsInputController.value,
                                keyboardType: TextInputType.number,
                                maxLength: 2,
                                style: Theme.of(context).textTheme.headline1
                                  ..copyWith(
                                    color: Theme.of(context).accentColor,
                                  ))),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return TimerRunningWithBottomButton(
              displayString: state.displayString.value,
              isRunning: state.isRunning.value,
              pauseFunc: state.pause,
              unpauseFunc: state.unpause,
            );
          }
        }
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
