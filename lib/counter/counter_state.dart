part of 'counter_bloc.dart';

class CounterState {
  int count;

  CounterState({required this.count});
}

class InitalState extends CounterState {
  InitalState({super.count = 0});
}
