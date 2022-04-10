import 'package:flutter/foundation.dart';

class CalcService {
  static final CalcService _instance = CalcService._internal();

  factory CalcService() {
    return _instance;
  }

  double? a;
  String? o;
  double? b;

  CalcService._internal();

  String calculate() {
    switch (o) {
      case "+":
        return add(a!, b!).toString();
      case "–":
        return subtract(a!, b!).toString();
      case "x":
        return multiply(a!, b!).toString();
      case "÷":
        return divide(a!, b!).toString();
      default:
        return "Unsupported Operation";
    }
  }

  @visibleForTesting
  double add(double a, double b) {
    return a + b;
  }

  @visibleForTesting
  double subtract(double a, double b) {
    return a - b;
  }

  @visibleForTesting
  double multiply(double a, double b) {
    return a * b;
  }

  @visibleForTesting
  double divide(double a, double b) {
    return a / b;
  }
}
