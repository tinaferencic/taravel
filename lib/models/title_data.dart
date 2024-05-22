import 'package:flutter/material.dart';

class TitleData extends ChangeNotifier {
  String _title = '';

  String get title => _title;

  void setTitle(String title) {
    _title = title;
    notifyListeners(); // Notify listeners of the change
  }
}
