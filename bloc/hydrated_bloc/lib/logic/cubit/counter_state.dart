// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'counter_cubit.dart';

class CounterState {
  int counterValue;
  bool wasIncremented;

  CounterState({
    required this.counterValue,
    this.wasIncremented = false,
  });

  CounterState copyWith({
    int? counterValue,
    bool? wasIncremented,
  }) {
    return CounterState(
      counterValue: counterValue ?? this.counterValue,
      wasIncremented: wasIncremented ?? this.wasIncremented,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterValue': counterValue,
      'wasIncremented': wasIncremented,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
      wasIncremented: map['wasIncremented'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CounterState(counterValue: $counterValue, wasIncremented: $wasIncremented)';

  @override
  bool operator ==(covariant CounterState other) {
    if (identical(this, other)) return true;

    return other.counterValue == counterValue &&
        other.wasIncremented == wasIncremented;
  }

  @override
  int get hashCode => counterValue.hashCode ^ wasIncremented.hashCode;
}
