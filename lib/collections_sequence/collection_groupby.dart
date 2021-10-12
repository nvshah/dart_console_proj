import 'package:collection/collection.dart' as collect;

void main() {
  var seats = <int>[6, 7, 2, 4, 5];
  var keys = <int, String>{
    6: 'win',
    4: 'split1',
    5: 'split1',
    2: 'win',
    7: 'side',
  };

  var g = collect.groupBy<int, String>(
      seats,
      (seatNo) => keys[seatNo].contains('split')
          ? keys[seatNo]
          : '${keys[seatNo]}$seatNo');
  print(g);

  var m2 = <int, List<int>>{};

  final l = m2.putIfAbsent(1, () => []);
  l.add(99);

  final l2 = m2.putIfAbsent(1, () => []);
  l2.add(100);

  print(m2);
}
