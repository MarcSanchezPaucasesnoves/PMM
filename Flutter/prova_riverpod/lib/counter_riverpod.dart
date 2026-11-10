import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

  void reset() {
    state = 0;
  }
}

final counterProvider = NotifierProvider<Counter, int>(() => Counter());