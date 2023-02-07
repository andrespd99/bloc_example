import 'package:counter_app/ui/calendar/cubit/cubit.dart';
import 'package:flutter/material.dart';

/// {@template calendar_body}
/// Body of the CalendarPage.
///
/// Add what it does
/// {@endtemplate}
class CalendarBody extends StatelessWidget {
  /// {@macro calendar_body}
  const CalendarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        return Center(child: Text(state.selectedDate.toString()));
      },
    );
  }
}
