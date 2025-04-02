import 'package:flutter/widgets.dart';

class CounterProvider extends InheritedWidget {
  CounterProvider({super.key, required super.child});

  final CounterState state = CounterState();

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.state.diff(state);
  }

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }
}

class CounterState {
  int _value = 0;

  void inc() => _value++;
  void dec() => _value--;
  int get value => _value;

  bool diff(CounterState old) {
    return old._value != _value;
  }
}
