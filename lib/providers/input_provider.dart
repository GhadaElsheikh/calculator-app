import 'package:calculator_app/utils/calculator_helper.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class InputProvider extends ChangeNotifier {
  String _text = '';
  bool _isEnabled = false;
  num _storedValue = 0;
  bool _calculated = false;
  bool _mr = true;

  String get text => _text;
  bool get isEnabled => _isEnabled;
  void enable() {
    _isEnabled = true;
    _text = '0';
    notifyListeners();
  }

  void disable() {
    _isEnabled = false;
    _text = '';
    notifyListeners();
  }

  void clear() {
    _text = '0';
    notifyListeners();
  }

  void type(String val) {
    if (CalculatorHelper.isOperator(val)) {
      if (CalculatorHelper.endsWithOperator(_text)) {
        _text = _text.substring(0, _text.length - 1) + val;
      } else {
        _text = _text + val;
      }
      _calculated = false;
    } else {
      if (_calculated) {
        //to clear screen after each evaluation
        _text = val;
        _calculated = false;
      } else {
        _text = CalculatorHelper.normalizeInput(_text, val);
      }
    }

    notifyListeners();
  }

  void calculate() {
    _text = _text.replaceAll('×', '*');
    _text = _text.replaceAll('÷', '/');
    ExpressionParser p = GrammarParser();
    try {
      Expression exp = p.parse(_text);
      var context = ContextModel();
      var evaluator = RealEvaluator(context);
      num eval = evaluator.evaluate(exp);
      _text = CalculatorHelper.formatNum(eval);
    } catch (e) {
      _text = 'Error';
    }
    _calculated = true;
    notifyListeners();
  }

  void mrMc() {
    if (_mr) {
      _text = CalculatorHelper.formatNum(_storedValue);
      _calculated = true;
      notifyListeners();
    } else {
      _storedValue = 0;
    }
    _mr = !_mr;
  }

  void mPlus() {
    try {
      _storedValue += num.parse(_text);
    } catch (e) {
      _text = 'Error';
      _calculated = true;
      notifyListeners();
    }
  }

  void mMinus() {
    try {
      _storedValue -= num.parse(_text);
    } catch (e) {
      _text = 'Error';
      _calculated = true;
      notifyListeners();
    }
  }
}
