import 'package:flutter/foundation.dart';

class CalcService {
  static final CalcService _instance = CalcService._internal();

  factory CalcService() {
    return _instance;
  }

  String i = "0";
  double? a;
  String? o;
  double? b;

  CalcService._internal();

  String calculate() {
    switch (o) {
      case "+":
        double result = add(a!, b!);
        a = result;
        o = b = null;
        return result.toString();
      case "–":
        double result = subtract(a!, b!);
        a = result;
        o = b = null;
        return result.toString();
      case "x":
        double result = multiply(a!, b!);
        a = result;
        o = b = null;
        return result.toString();
      case "÷":
        double result = divide(a!, b!);
        a = result;
        o = b = null;
        return result.toString();
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
