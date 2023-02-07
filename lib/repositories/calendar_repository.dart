import 'dart:async';

import 'package:flutter/material.dart';

class CalendarRepository extends ChangeNotifier {
  CalendarRepository(this.date);

  final DateTime date;

  Map<DateTime, List<Object>> reservations = {};

  Future<List<Object>?> fetchReservationsOfDate(DateTime selectedDate) async {
    try {
      selectedDate = selectedDate;
      notifyListeners();
      // Cargas las reservas.
      return null;
    } catch (e) {}
  }
}
