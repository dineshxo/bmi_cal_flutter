import 'dart:math';

import 'package:flutter/material.dart';

class BmiCalculator {
  BmiCalculator({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more !';
    } else if (_bmi > 18) {
      return 'You have normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. Eat bit more! ';
    }
  }

  Color getStatusColor() {
    if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi > 18) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
