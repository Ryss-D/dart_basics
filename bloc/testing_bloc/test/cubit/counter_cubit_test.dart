import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import '/Users/sebastian/projects/dart_basics/bloc/testing_bloc/lib/cubit/counter_cubit.dart';

void main() {
// a group its a way to organize multiple test for afeature
  group('CounterCubit', () {
    //instance of objects we weill test
    late CounterCubit counterCubit;

    //setUp function will run before tests
    setUp(() {
      counterCubit = CounterCubit();
    });

    //tearDwon function will run after tests
    tearDown(() {
      counterCubit.close();
    });

    // in dart two instyances are different, though they have the
    // same values, thats because they are on a differente
    //memory allocation
    test(
        'the initial state for the CounterCubit is CounterState(counterValue:0) ',
        () {
      //expect(actual, matcher)
      expect(counterCubit.state,
          const CounterState(counterValue: 0, wasIncremented: false));
    });

    blocTest(
      'the cubit should emit a CoutnerState(counterValue:1, wasIncremented:true) when bubit.incremet() functions in class',
      //build is the fuction that will return the current instance
      build: () => counterCubit,
      //seed represents the inial value of the bloc
      //seed: CounterState(counterValue: 0, wasIncremented: true),
// act ios a fucntion who takes the cubnit and return the action
      act: (CounterCubit cubit) => cubit.increment(),
// expect is a list with to verify the  states emited
      expect: () => [const CounterState(counterValue: 1, wasIncremented: true)],
    );
  });
}
