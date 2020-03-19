import 'package:flutter_test/flutter_test.dart';
import 'package:sample_rxdart/model/counter.dart';

void main() {
  CounterBloc _counterBloc;

  setUp(() {
     _counterBloc = new CounterBloc(initialCount: 0);
  });

  tearDown(() {
    _counterBloc.dispose();
  });

  test('Increment plus one to counter', () {
    _counterBloc.increment();
    expect(_counterBloc.counterObservable, emits(1));
  });

  test('Decrement minus one from counter', () {
    _counterBloc.decrement();
    expect(_counterBloc.counterObservable, emits(-1));
  });

  //Inegration Test
}