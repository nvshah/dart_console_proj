import 'package:intl/intl.dart';

extension nKChips on num {
  String toKChips() {
    return NumberFormat.compact().format(this);
  }
}

String convertNumber(n) {
  if (n == null || n == '') return '';
  // String num = n.toString();
  return NumberFormat.compactCurrency(
    decimalDigits: 2,
    locale: "en_US",
    symbol:
        '', // if you want to add currency symbol then pass that in this else leave it empty.
  ).format(n);
}

void main(List<String> args) {
  var n = 92923493939594943;

  print(n.toKChips());
  print(convertNumber(n));
}
