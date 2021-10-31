import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FruitData extends ChangeNotifier {
  String fruit = 'Unknown';
  void favoriteFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
