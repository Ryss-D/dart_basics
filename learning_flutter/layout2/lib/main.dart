import 'package:flutter/material.dart';

import 'layout.dart';

void main() => runApp(MyApp());

//random commet to check authory
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Layout(),
        ),
      ),
    );
  }
}
