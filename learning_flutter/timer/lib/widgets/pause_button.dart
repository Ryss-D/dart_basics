import 'package:flutter/material.dart';

import 'custom_button.dart';

class PauseButton extends StatelessWidget {
  final Function onPressed;
  final double size;

  const PauseButton({
    Key key,
    @required this.onPressed,
    @required this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      size: size,
      icon: Icons.pause_circle_outline,
    );
  }

  // Widget build(BuildContext context) {
  // We will change the type of return to avoid the icon jumping for be different to pause button
  // return IconButton(
  //   iconSize: size,
  //   icon: Icon(Icons.pause_circle_filled_outlined,
  //       color: Theme.of(context).primaryColor),
  //   onPressed: onPressed,
  // );
}
