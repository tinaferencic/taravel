import 'package:flutter/material.dart';
import 'package:taravel2/models/interests_data.dart';

class InterestProvider extends ChangeNotifier {
  List<Interest> interests = [
    Interest('Museums'),
    Interest('Restaurants'),
    Interest('Sporting Events'),
    Interest('Festivals'),
    Interest('Cafes'),
    Interest('Historic Monuments'),
  ];

  void toggleInterest(int index) {
    interests[index].toggleSelected();
    notifyListeners();
  }
}
