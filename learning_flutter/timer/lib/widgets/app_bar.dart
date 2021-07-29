import 'package:flutter/material.dart';
import 'package:timer/widgets/reset_button.dart';

AppBar buildAppBar({BuildContext context, Function reset}) {
  return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      leading: Text(''),
      actions: [
        ResetButton(
          onPressed: reset,
          size: 50,
        )
      ]);
}
