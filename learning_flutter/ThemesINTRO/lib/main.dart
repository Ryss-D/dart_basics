import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue[300],
        backgroundColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ExampleHome(),
      ),
    );
  }
}

class ExampleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('hello world',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            )),
      ),
    );
  }
}
