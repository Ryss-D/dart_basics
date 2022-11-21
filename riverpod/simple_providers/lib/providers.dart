import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_providers/database.dart';
import 'package:state_notifier/state_notifier.dart';

//user state fort the app
final userProvider = FutureProvider<String>((ref) async {
  //into providers theere are two big modifiers .autodispose to delete auwto
  //make away providers we are not using
  //and .familly  who allow us to pass another value like taht
  //final userprovider = FutureProvider.family<String, String>((ref, str)async{
  // if(str == "Tadas"){
  // rturn "good tadas"}
  //else get data from databse
  //})
  return ref.read(dataBaseProvider).getUserData();
});

//counter state notifier for the app
//state notifier provider is the inmutable way to use the providers

final counterController =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<int> {
  //super(0) means that the initial estate will be 0
  //wer are calling the constructor of state notifiaar with 0 paramether
  CounterNotifier() : super(0);

  void add() {
    state = state + 1;
  }

  void substract() {
    state = state - 1;
  }
}

//async satae notifier provider for state does'nt change in real time

final counterAsyncController =
    StateNotifierProvider<CounterAsyncNotifier, AsyncValue<int>>(
        (ref) => CounterAsyncNotifier(ref));

class CounterAsyncNotifier extends StateNotifier<AsyncValue<int>> {
  //super(0) means that the initial estate will be 0
  //wer are calling the constructor of state notifiaar with 0 paramether
  CounterAsyncNotifier(this.ref) : super(AsyncLoading()) {
    _init();
  }

  final Ref ref;
  //asyncValue.loading9) == AsyncLoading
  void _init() async {
    await ref.read(dataBaseProvider).initDatabase();
    state = AsyncData(0);
  }

  void add() async {
    state = AsyncLoading();
    int count = await ref.read(dataBaseProvider).increment();
    state = AsyncData(count);
  }

  void substrac() async {
    state = AsyncLoading();
    int count = await ref.read(dataBaseProvider).decrement();
    state = AsyncData(count);
  }
}
