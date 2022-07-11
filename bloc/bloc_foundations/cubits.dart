import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

main() {
  final cubit = CounterCubit();
  //this susbscribes to state stream an prints the state value emited by the stream
  final StreamSubscription = cubit.listen(print);

  print(cubit.state);

  cubit.increment();
  cubit.increment();
  print(cubit.state);

  cubit.decrement();
  print(cubit.state);

  cubit.close();
}
