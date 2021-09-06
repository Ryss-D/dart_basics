import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:l_redux/redux/actions.dart';
import 'package:l_redux/redux/store.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Km'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Km',
                ),
                keyboardType: TextInputType.number,
                onChanged: (val) =>
                    StoreProvider.of<AppState>(context).dispatch(UpdateKM(val)),
              ),
            ),
            Text('Miles'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(state.miles),
            ),
            ElevatedButton(
              onPressed: () =>
                  StoreProvider.of<AppState>(context).dispatch(Convert()),
              child: Text('Convert'),
            ),
          ],
        ),
      )),
    );
  }
}
