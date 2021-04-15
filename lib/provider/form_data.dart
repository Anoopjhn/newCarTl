import 'package:flutter/material.dart';

class FormData extends ChangeNotifier{

  int _stepCount = 0;

  int get stepCount => _stepCount;

  set stepCount(int value) {
    _stepCount = value;
    notifyListeners();
  }
}

int _activeStep = 0;

