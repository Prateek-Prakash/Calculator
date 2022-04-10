import 'package:calculator/calc_service.dart';
import 'package:test/test.dart';

void main() {
  test('Calculate Add Operation', () {
    CalcService().a = 5;
    CalcService().o = "+";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "10.0");
  });

  test('Calculate Subtract Operation', () {
    CalcService().a = 5;
    CalcService().o = "–";
    CalcService().b = 10;
    String result = CalcService().calculate();
    expect(result, "-5.0");
  });

  test('Calculate Multiply Operation', () {
    CalcService().a = 5;
    CalcService().o = "x";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "25.0");
  });

  test('Calculate Divide Operation', () {
    CalcService().a = 10;
    CalcService().o = "÷";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "2.0");
  });

  test('Add Numbers Method', () {
    double actual = CalcService().add(5, 5);
    expect(actual, 10);
  });

  test('Subtract Numbers Method', () {
    double actual = CalcService().subtract(5, 10);
    expect(actual, -5);
  });

  test('Multiply Numbers Method', () {
    double actual = CalcService().multiply(5, 5);
    expect(actual, 25);
  });

  test('Divide Numbers Method', () {
    double actual = CalcService().divide(10, 5);
    expect(actual, 2);
  });
}
