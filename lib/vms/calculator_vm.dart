import 'package:calculator/services/calc_service.dart';
import 'package:calculator/widgets/calc_key.dart';
import 'package:flutter/material.dart';
import 'package:get_it_hooks/get_it_hooks.dart';

class CalculatorVM extends ChangeNotifier {
  String _input = "0";
  set input(String val) {
    _input = val;
    notifyListeners();
  }

  String get input => _input;

  void process(String value, KeyType type) {
    switch (type) {
      case KeyType.input:
        if (input == "0") {
          input = value;
        } else {
          input += value;
        }
        break;
      case KeyType.operator:
        break;
      case KeyType.function:
        switch (value) {
          case "D":
            if (input != "0") {
              if (input.length == 1) {
                input = "0";
              } else {
                input = input.substring(0, input.length - 1);
              }
            }
            break;
          case "C":
            input = "0";
            CalcService().clear();
            break;
          default:
            break;
        }
        break;
      default:
        break;
    }
  }
}
