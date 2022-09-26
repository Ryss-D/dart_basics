part of 'internet_cubit.dart';

//enum ConnectionType {
//Wifi,
//Mobile,
//}
//better to import it from constants folder/file

abstract class InternetState {}

//class InternetInitial extends InternetState {}
//instead of showing the inernetinitial we will use a internet loading as first state

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});
}

class InternetDisconnected extends InternetState {}
