import 'dart:math';

import 'package:flutter/material.dart';

double _BMI;

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  String calculateBMI() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String result() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_BMI > 18.5) {
      return 'You have a normal bmi weight. Good Job!';
    } else {
      return 'Your body weight is too low. Try to eat some more';
    }
  }
}
