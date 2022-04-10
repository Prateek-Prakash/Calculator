class CalcService {
  static final CalcService _instance = CalcService._internal();

  factory CalcService() {
    return _instance;
  }

  CalcService._internal();

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }
}