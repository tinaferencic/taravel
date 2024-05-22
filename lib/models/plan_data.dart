import 'package:flutter/material.dart';

class PlanData extends ChangeNotifier {
  String _destination = '';

  String get destination => _destination;

  void setDestination(String destination) {
    _destination = destination;
    notifyListeners(); // Notify listeners of the change
  }
}
