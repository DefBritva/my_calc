import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  String equation = '0';
  String currentResult = '0';
  late num _num1;
  late num _num2;
  bool isCreated = false;
  bool isOperationButtonPressed = false;
  String currentOperation = '';

  void onPressed(String buttonSymbol) {
    if (!isCreated || isOperationButtonPressed) {
      equation = '';
      isOperationButtonPressed = false;
    }
    equation += buttonSymbol;
    isCreated = true;
    notifyListeners();
  }

  void clear() {
    equation = '0';
    isCreated = false;
    notifyListeners();
  }

  void changeSign() {
    try {
      if (num.parse(equation) > 0)
        equation = '-$equation';
      else
        equation = equation.replaceFirst('-', '');
      notifyListeners();
    } catch (_) {}
  }

  void calculateOnePercent() {
    equation = (num.parse(equation) / 100).toString();
    notifyListeners();
  }

  void sum() {
    try {
      _num1 = num.parse(equation);
      isOperationButtonPressed = true;
      currentOperation = '+';
    } catch (_) {}
  }

  void subtract() {
    try {
      _num1 = num.parse(equation);
      isOperationButtonPressed = true;
      currentOperation = '-';
    } catch (_) {}
  }

  void multiply() {
    try {
      _num1 = num.parse(equation);
      isOperationButtonPressed = true;
      currentOperation = '*';
    } catch (_) {}
  }

  void division() {
    try {
      _num1 = num.parse(equation);
      isOperationButtonPressed = true;
      currentOperation = '/';
    } catch (_) {}
  }

  void showResult() {
    num? __num2 = num.tryParse(equation) ?? null;
    if (__num2 != null)
      _num2 = __num2;
    else
      return;
    switch (currentOperation) {
      case '+':
        equation = (_num1 + _num2).toString();
        notifyListeners();
        break;
      case '-':
        equation = (_num1 - _num2).toString();
        notifyListeners();
        break;
      case '*':
        String _equation = (_num1 * _num2).toString();
        if (RegExp(r'\d+.0').hasMatch(_equation)) {
          equation = _equation.replaceAll('.0', '');
        } else {
          equation = _equation;
        }
        notifyListeners();
        break;
      case '/':
        String _equation = (_num1 / _num2).toString();
        if (RegExp(r'\d+.0').hasMatch(_equation)) {
          equation = _equation.replaceAll('.0', '');
        } else {
          equation = _equation;
        }
        notifyListeners();
        break;
    }
  }
}
