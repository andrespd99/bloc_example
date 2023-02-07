// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:counter_app/ui/calendar/cubit/cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalendarCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          CalendarCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final calendarCubit = CalendarCubit();
      expect(calendarCubit.state.selectedDate, equals('Default Value'));
    });

    blocTest<CalendarCubit, CalendarState>(
      'yourCustomFunction emits nothing',
      build: CalendarCubit.new,
      act: (cubit) => cubit.yourCustomFunction(),
      expect: () => <CalendarState>[],
    );
  });
}
