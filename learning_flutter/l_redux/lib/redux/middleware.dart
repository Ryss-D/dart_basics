import 'package:l_redux/redux/actions.dart';
import 'package:l_redux/redux/store.dart';
import 'package:redux/redux.dart';

bool isNumeric(String c) {
  /// isNumeric taked a string of length 1
  /// returns tru if string is numeric, return false otherwise

  //remember that A 1 ... have a numeric representation (something like bytes)
  return c.compareTo('0') >= 0 && c.compareTo('9') <= 0;
}

void appStateMiddleware(
    Store<AppState> store, dynamic action, NextDispatcher next) {
  print("In the middleware");

  if (action is UpdateKM) {
    String cleanedString = '';
    for (String c in action.payload!.split('')) {
      if (isNumeric(c)) {
        print("Adding $c to cleanedString");
        cleanedString += c;
      } else {
        print("$c is not recofnized as numeric");
      }
    }

    store.dispatch(UpdateKMCleaned(cleanedString));
  } else if (action is Convert) {
    double kmAsDouble = double.parse(store.state.km);
    double milesAsDouble = kmAsDouble * 0.621371;

    store.dispatch(UpdateMiles(milesAsDouble.toString()));

    print(milesAsDouble);
  }

  next(action);
}
