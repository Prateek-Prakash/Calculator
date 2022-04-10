import 'package:calculator/calc_service.dart';
import 'package:test/test.dart';

void main() {
  test('Add Small Numbers', () {
    double result = CalcService().add(5, 5);
    expect(result, 10);
  });

  test('Subtract Small Numbers', () {
    double result = CalcService().subtract(5, 10);
    expect(result, -5);
  });

  test('Multiply Small Numbers', () {
    double result = CalcService().multiply(5, 5);
    expect(result, 25);
  });

  test('Divide Small Numbers', () {
    double result = CalcService().divide(10, 5);
    expect(result, 2);
  });
}
