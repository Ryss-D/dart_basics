import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptativeElevatedButton extends StatelessWidget {
  final VoidCallback submitFuction;

  AdaptativeElevatedButton(this.submitFuction);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text('Add transaction',
                style: Theme.of(context).textTheme.button),
            onPressed: submitFuction)
        : ElevatedButton(
            child: Text(
              'Add transaction',
              style: Theme.of(context).textTheme.button,
            ),
            //style: color text purple,
            onPressed: submitFuction,
          );
  }
}
