class CalculatorHelper {
  static String formatNum(num n) =>
      (n == n.toInt()) ? n.toInt().toString() : n.toString();

  static bool isOperator(String val) => '+-×÷'.contains(val);

  static bool endsWithOperator(String text) {
    return text.endsWith('×') ||
        text.endsWith('-') ||
        text.endsWith('+') ||
        text.endsWith('÷');
  }

  static String normalizeInput(String text, String val) {
    return (text + val).replaceFirstMapped(
      RegExp(r'\b0([1-9])'),
      (m) => m.group(1)!,
    );
  }
}
