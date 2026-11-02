import 'package:flutter/material.dart';

class Counter extends ChangeNotifier{
  int _count = 0;

  int get count => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }
}