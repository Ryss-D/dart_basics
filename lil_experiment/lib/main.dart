import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool _isInitial = true;
  void _buttonToggled() {
    setState(() {
      _isInitial = !_isInitial;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("First experiment")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child:
                    _isInitial ? const Text("Initial") : const Text("Toggled")),
            ElevatedButton(
                onPressed: _buttonToggled,
                child: const Text("Pushme to change the text"))
          ],
        ),
      ),
    );
  }
}
