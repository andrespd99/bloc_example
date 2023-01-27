import 'package:bloc/bloc.dart';
import 'package:counter_app/repositories/counter_repository.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit({
    required AuthenticationRepository auth,
  })  : _auth = auth,
        super(const CounterState());

  final AuthenticationRepository _auth;

  Future<void> increment() async {
    try {
      emit(state.copyWith(status: CounterStatus.loading));

      await _auth.login();

      emit(
        state.copyWith(
          count: state.count + 1,
          status: CounterStatus.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CounterStatus.failure,
        ),
      );
    }
  }

  void decrement() => emit(CounterState(count: state.count - 1));
}
