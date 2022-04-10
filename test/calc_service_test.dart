import 'package:calculator/services/calc_service.dart';
import 'package:test/test.dart';

void main() {
  test('Clear Variables', () {
    CalcService().a = 5;
    CalcService().o = "+";
    CalcService().b = 5;
    CalcService().clear();
    expect(CalcService().a, null);
    expect(CalcService().o, null);
    expect(CalcService().b, null);
  });

  test('Calculate Add Operation', () {
    CalcService().a = 5;
    CalcService().o = "+";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "10.0");
    expect(CalcService().a, 10);
    expect(CalcService().o, null);
    expect(CalcService().b, null);
  });

  test('Calculate Subtract Operation', () {
    CalcService().a = 5;
    CalcService().o = "–";
    CalcService().b = 10;
    String result = CalcService().calculate();
    expect(result, "-5.0");
    expect(CalcService().a, -5);
    expect(CalcService().o, null);
    expect(CalcService().b, null);
  });

  test('Calculate Multiply Operation', () {
    CalcService().a = 5;
    CalcService().o = "x";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "25.0");
    expect(CalcService().a, 25);
    expect(CalcService().o, null);
    expect(CalcService().b, null);
  });

  test('Calculate Divide Operation', () {
    CalcService().a = 10;
    CalcService().o = "÷";
    CalcService().b = 5;
    String result = CalcService().calculate();
    expect(result, "2.0");
    expect(CalcService().a, 2);
    expect(CalcService().o, null);
    expect(CalcService().b, null);
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
