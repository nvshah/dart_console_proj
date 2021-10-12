void main() {
  String s = '😀';
  int cu = s.codeUnitAt(0);

  print(cu);
  print(s.codeUnits);
  String a = 55357.toRadixString(16);
  String b = 56832.toRadixString(16);
  print('$a, $b');
  print('\u{d83d}\u{de00}');
}
