import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timer/state/timer_state.dart';
import 'package:timer/widgets/pause_button.dart';
import 'package:timer/widgets/play_button.dart';
import 'package:timer/widgets/reset_button.dart';

import '../widgets/bottom_nav_bar.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = "/timer-screen";
  @override
  Widget build(BuildContext context) {
    final TimerState state = Get.put(TimerState());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          leading: Text(''),
          actions: [
            ResetButton(
              onPressed: state.reset,
              size: 50,
            )
          ]),
      body: Obx(() {
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
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(state.displayString.value,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          color: state.isRunning.value
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).accentColor)),
                ),
              ),
              Expanded(
                flex: 1,
                child: state.isRunning.value
                    ? Container(
                        alignment: Alignment.topCenter,
                        child: PauseButton(onPressed: state.pause, size: 85))
                    : Container(
                        alignment: Alignment.topCenter,
                        child: PlayButton(onPressed: state.unpause, size: 85)),
              )
            ],
          );
        }
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
