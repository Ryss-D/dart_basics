part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counterValue;
  final bool wasIncremented;

  const CounterState({
    required this.counterValue,
    required this.wasIncremented,
  });

  // on props we are passing the attributes of our class
  // we want to compare by value and not by memory allocation
  //using the equatable librabry
  @override
  List<Object> get props => [this.counterValue, this.wasIncremented];
}
