import 'package:calculator/services/calc_service.dart';
import 'package:calculator/widgets/calc_key.dart';
import 'package:flutter/material.dart';

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
        if (input == "0" && CalcService().a == null && CalcService().o == null) {
          input = value;
        } else if (CalcService().a != null && CalcService().o != null) {
          input = value;
        } else {
          input += value;
        }
        break;
      case KeyType.operator:
        CalcService().a = double.parse(input);
        CalcService().o = value;
        break;
      case KeyType.function:
        switch (value) {
          case 'C':
            input = '0';
            CalcService().clear();
            break;
          case '%':
            input = (double.parse(input) / 100.0).toString();
            break;
          case '±':
            if (input != '0') {
              input = (double.parse(input) * -1).toString();
            }
            break;
          case 'D':
            if (input != '0') {
              if (input.length == 1) {
                input = '0';
              } else {
                input = input.substring(0, input.length - 1);
              }
            }
            break;
          case '=':
            CalcService().b = double.parse(input);
            input = CalcService().calculate();
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
