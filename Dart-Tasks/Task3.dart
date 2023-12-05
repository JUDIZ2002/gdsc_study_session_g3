import 'dart:async';

class Calculator {
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
    if (b == 0) {
      throw Exception("Division by zero is not allowed.");
    }
    return a / b;
  }
}

void main() {
  final calculator = Calculator();
  double? result;

  try {
    result = calculator.divide(10, 0);
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }

  Future.delayed(Duration(seconds: 5), () {
    if (result != null) {
      print('Delayed Result: $result');
    } else {
      print('Delayed Result: Error occurred');
    }
  });
}
