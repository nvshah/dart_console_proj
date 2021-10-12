void main() {
  print((numParser2('1sdj30s0') ?? 0) + 20);
}

int numParser1(String s) {
  if (s == null) return null;
  final pattern = '[^0-9]';

  final regex = RegExp(pattern);

  return int.tryParse(s.replaceAll(regex, '') ?? '');
}

int numParser2(String s) {
  if (s == null) return null;
  final pattern = '[0-9]+';
  final regex = RegExp(pattern);
  //print(regex.firstMatch(s).group(0));
  return int.tryParse(regex.firstMatch(s)?.group(0) ?? '');
}
