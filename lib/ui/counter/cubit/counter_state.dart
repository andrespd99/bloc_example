part of 'counter_cubit.dart';

enum CounterStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CounterStatus.initial;
  bool get isLoading => this == CounterStatus.loading;
  bool get isSuccess => this == CounterStatus.success;
  bool get isFailure => this == CounterStatus.failure;
}

class CounterState extends Equatable {
  const CounterState({
    this.count = 0,
    this.status = CounterStatus.initial,
    this.errorMessage = '',
  });

  final int count;
  final CounterStatus status;
  final String errorMessage;

  @override
  List<Object?> get props => [count, status, errorMessage];

  CounterState copyWith({
    int? count,
    CounterStatus? status,
    String? errorMessage,
  }) {
    return CounterState(
      count: count ?? this.count,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
