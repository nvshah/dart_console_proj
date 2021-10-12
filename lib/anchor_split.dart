void getLogTextChunks({String msg}) {
  final anchorParser = RegExp(r'<([a-z])>(.*)<\/\1>');

  final msgs = <String>[];

  msg = msg.splitMapJoin(
    anchorParser,
    onMatch: (m) {
      final anchorContent = m.group(2);
      msgs.add(anchorContent);
      return anchorContent;
    },
    onNonMatch: (nm) {
      msgs.add(nm);
      return nm;
    },
  );
  print(msgs);
}
