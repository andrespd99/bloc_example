part of 'calendar_cubit.dart';

enum CalendarStatus { initial, loading, success, failure }

/// {@template calendar}
/// CalendarState description
/// {@endtemplate}
class CalendarState extends Equatable {
  /// {@macro calendar}
  CalendarState({
    DateTime? selectedDate,
    this.status = CalendarStatus.initial,
  }) : selectedDate = selectedDate ?? DateTime.now();

  /// A description for customProperty
  final DateTime selectedDate;

  final CalendarStatus status;

  @override
  List<Object> get props => [selectedDate, status];

  /// Creates a copy of the current CalendarState with property changes
  CalendarState copyWith({
    DateTime? selectedDate,
    CalendarStatus? status,
  }) {
    return CalendarState(
      selectedDate: selectedDate ?? this.selectedDate,
      status: status ?? this.status,
    );
  }
}
