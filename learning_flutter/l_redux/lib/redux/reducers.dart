import 'package:l_redux/redux/actions.dart';
import 'package:l_redux/redux/store.dart';

AppState reducers(AppState prevState, dynamic action) {
  late AppState newState;
  print("----------------");
  print("In the reducer");
  //if (action is UpdateKM) {
  if (action is UpdateKMCleaned) {
    print(action);
    //print(action.payload);
    //newState = AppState.copyWith(prev: prevState, km: action.payload);
    //print(newState);
    //print(newState.km);
    //return newState;
    //this is the resume and nice way
    return AppState.copyWith(prev: prevState, km: action.payload);
    //} else if (action is Convert) {
    //! THE FOLLOWING COE BELONG IN MIDDLEWARE
    //! NOT IN REDUCERS!!

    //double kmAsDouble = double.parse(prevState.km);
    //double milesAsDouble = kmAsDouble * 0.621371;
    //newState =
    //AppState.copyWith(prev: prevState, miles: milesAsDouble.toString());
    //return newState;
    // return AppState.copyWith(prev: prevState, miles: milesAsDouble.toString());
  } else if (action is UpdateMiles) {
    print(action);
    return AppState.copyWith(prev: prevState, miles: action.payload);
  } else {
    return AppState(miles: prevState.miles, km: prevState.km);
  }
}
