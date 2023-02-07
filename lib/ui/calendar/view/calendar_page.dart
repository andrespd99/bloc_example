import 'package:counter_app/repositories/calendar_repository.dart';
import 'package:counter_app/ui/calendar/cubit/cubit.dart';
import 'package:counter_app/ui/calendar/widgets/calendar_body.dart';
import 'package:flutter/material.dart';

/// {@template calendar_page}
/// A description for CalendarPage
/// {@endtemplate}
class CalendarPage extends StatelessWidget {
  /// {@macro calendar_page}
  const CalendarPage({super.key});

  /// The static route for CalendarPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const CalendarPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(context.read<CalendarRepository>()),
      child: const Scaffold(
        body: CalendarView(),
      ),
    );
  }
}

/// {@template calendar_view}
/// Displays the Body of CalendarView
/// {@endtemplate}
class CalendarView extends StatelessWidget {
  /// {@macro calendar_view}
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalendarBody();
  }
}
