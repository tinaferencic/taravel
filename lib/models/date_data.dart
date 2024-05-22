import 'package:flutter/material.dart';

class DateData extends ChangeNotifier {
  String? _selectedDate;

  String? get selectedDate => _selectedDate;

  void setSelectedDate(String selectedDate) {
    _selectedDate = selectedDate;
    notifyListeners();
  }
}
