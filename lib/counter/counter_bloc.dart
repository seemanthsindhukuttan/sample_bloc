import 'package:bloc/bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitalState()) {
    on<Increment>((event, emit) {
      return emit(
        CounterState(count: state.count + 1),
      );
    });

    on<Decrement>((event, emit) {
      return emit(
        CounterState(count: state.count - 1),
      );
    });
    on<Reset>((event, emit) {
      return emit(
        CounterState(count: state.count = 0),
      );
    });
  }
}
