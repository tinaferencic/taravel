import 'package:flutter/material.dart';

class BudgetData extends ChangeNotifier {
  String? _budget;

  String? get budget => _budget;

  void setBudget(String budget) {
    _budget = budget;
    notifyListeners();
  }
}
