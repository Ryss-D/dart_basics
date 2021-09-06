import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:l_redux/redux/store.dart';
import 'package:l_redux/redux/reducers.dart';
import 'package:l_redux/screens/home_screen.dart';
import 'package:redux/redux.dart';

void main() {
  Store<AppState> _store =
      Store<AppState>(reducers, initialState: AppState.initial());
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final dynamic store;

  const MyApp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
