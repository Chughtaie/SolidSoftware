import 'dart:math';
import 'package:flutter/material.dart';

class RandomProvider extends ChangeNotifier {
  int r = 100;
  int g = 10;
  int b = 20;
  Random rand = Random();
  double opacity = 200;

  void setRandom() {
    int max = 255;
    r = rand.nextInt(max);
    g = rand.nextInt(max);
    b = rand.nextInt(max);
    notifyListeners();
  }

  void setOpacity(double value) {
    opacity = value;
    notifyListeners();
  }
}
