// app from scratch

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // MyApp() == MyApp app = MyApp()
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[200], //all background color
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 36.0,
              backgroundColor: Colors.cyan[300], //text background color
            ),
            // textDirection: TextDirection.ltr, we now dont need it becasuse we have are inside the MaterialApp and it give a context to wingets
          ),
        ),
      ),
    );
  }
}
