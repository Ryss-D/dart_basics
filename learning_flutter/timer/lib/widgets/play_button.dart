import 'package:flutter/material.dart';
import 'package:timer/widgets/custom_button.dart';

class PlayButton extends StatelessWidget {
  final Function onPressed;
  final double size;

  const PlayButton({
    Key key,
    @required this.onPressed,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onPressed,
      size: size,
      icon: Icons.play_circle_outline,
    );
    // We will change the type of return to avoid the icon jumping for be different to pause button
    //   return GestureDetector(
    //     onTap: onPressed,
    //     child: Icon(
    //       Icons.play_circle_outline,
    //       size: size,
    //       color: Theme.of(context).primaryColor,
    //     ),
    //   );
  }
}
