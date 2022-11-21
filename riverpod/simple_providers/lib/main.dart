import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_providers/providers.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Riverpod Simplified")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return ref
                    .watch(
                        userProvider) // this are other methods othen than when
                    //that we can use .map() will do the same but will return the cuirrent object
                    //that return the provider
                    //.maybeWhen()  when we just care abnout data field and in any othe situacion we
                    // will return something as whell as maybe map
                    .when(data: (String value) {
                  return Text(value);
                }, error: (Object error, StackTrace? stackTrace) {
                  return Text("A error happend");
                }, loading: () {
                  return CircularProgressIndicator();
                });
              },
            ),
            SizedBox(
              height: 100,
            ),
            Consumer(
              builder: (context, ref, child) {
                return Text(ref.watch(counterController).toString());
              },
            ),
            SizedBox(
              height: 100,
            ),
            Consumer(
              builder: ((context, ref, child) {
                return ref.watch(counterAsyncController).when(
                    data: (int value) {
                  return Text("AsyncValue: " + value.toString());
                }, error: (Object error, StackTrace? stackTrace) {
                  return Text("error");
                }, loading: () {
                  return CircularProgressIndicator();
                });
              }),
            ),
            SizedBox(
              height: 100,
            ),
            Consumer(
              builder: ((context, ref, child) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(counterController.notifier).add();
                    ref.read(counterAsyncController.notifier).add();
                  },
                  child: Text("add"),
                );
              }),
            ),
            Consumer(
              builder: ((context, ref, child) {
                return ElevatedButton(
                  onPressed: () {
                    ref.read(counterController.notifier).substract();
                    ref.read(counterAsyncController.notifier).substrac();
                  },
                  child: Text("substract"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
