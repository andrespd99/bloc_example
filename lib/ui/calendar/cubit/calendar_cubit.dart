import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:counter_app/repositories/calendar_repository.dart';
import 'package:equatable/equatable.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit(this.calendar) : super(CalendarState()) {
    calendar.addListener(() {
      emit(state.copyWith(selectedDate: calendar.date));
    });
  }

  final CalendarRepository calendar;

  /// A description for yourCustomFunction
  FutureOr<void> setDate(DateTime date) async {
    try {
      emit(state.copyWith(status: CalendarStatus.loading));

      await calendar.fetchReservationsOfDate(date);

      emit(state.copyWith(status: CalendarStatus.success));
    } catch (e) {
      emit(state.copyWith(status: CalendarStatus.failure));
    }
  }
}
