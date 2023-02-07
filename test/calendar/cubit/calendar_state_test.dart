// ignore_for_file: prefer_const_constructors

import 'package:counter_app/ui/calendar/cubit/cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalendarState', () {
    test('supports value equality', () {
      expect(
        CalendarState(),
        equals(
          const CalendarState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CalendarState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const calendarState = CalendarState(
            selectedDate: 'My property',
          );
          expect(
            calendarState.copyWith(),
            equals(calendarState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const calendarState = CalendarState(
            selectedDate: 'My property',
          );
          final otherCalendarState = CalendarState(
            selectedDate: 'My property 2',
          );
          expect(calendarState, isNot(equals(otherCalendarState)));

          expect(
            calendarState.copyWith(
              selectedDate: otherCalendarState.selectedDate,
            ),
            equals(otherCalendarState),
          );
        },
      );
    });
  });
}
