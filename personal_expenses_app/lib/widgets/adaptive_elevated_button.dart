import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback submitFunction;

  AdaptiveElevatedButton({required this.text, required this.submitFunction});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(text, style: Theme.of(context).textTheme.button),
            onPressed: submitFunction)
        : ElevatedButton(
            child: Text(
              text,
              style: Theme.of(context).textTheme.button,
            ),
            //style: color text purple,
            onPressed: submitFunction,
          );
  }
}
