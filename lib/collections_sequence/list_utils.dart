import 'dart:math' as math;

extension ListHelper<E> on List<E> {
  /**
   * Map `E` -> `T`
   *
   * While being mapped, provide with current element enumerated index as well !
   */
  List<T> enumerateMap<T>(T Function(int i, E e) fun) =>
      List.generate(length, (i) => fun(i, this[i]));

  List<E> updateWhere(
      {bool Function(int i, E e) filter, E Function(int i, E e) updater}) {
    for (var i = 0; i < length; i++) {
      if (filter(i, this[i])) {
        this[i] = updater(i, this[i]);
      }
    }
  }

}

class ListSeperator {
  ListSeperator._init();

  //Singleton
  static final i = ListSeperator._init();

  List<dynamic> generate({
    int childCount,
    dynamic Function(int index) item,
    dynamic Function(int index) separator,
    ExtraSeparator mode = ExtraSeparator.none,
  }) {
    int length;
    bool itemOnEvenIndex;
    switch (mode) {
      case ExtraSeparator.afterLastItem:
        length = childCount * 2;
        itemOnEvenIndex = true;
        break;
      case ExtraSeparator.beforeFirstItem:
        length = childCount * 2;
        itemOnEvenIndex = false;
        break;
      case ExtraSeparator.atBothEnds:
        length = (childCount * 2) + 1;
        itemOnEvenIndex = false;
        break;
      case ExtraSeparator.none:
        length = (childCount * 2) - 1;
        itemOnEvenIndex = true;
        break;
    }
    return List.generate(
      math.max(0, length),
          (index) {
        final itemIndex = index ~/ 2;
        if (itemOnEvenIndex ? index.isEven : index.isOdd) {
          return item(itemIndex);
        } else {
          return separator(itemIndex);
        }
      },
    );
  }
}

enum ExtraSeparator {
  afterLastItem,
  beforeFirstItem,
  atBothEnds,
  none,
}

class ListUtils {
  static List join({List list, dynamic sep}) {
    if (list == null) return null;
    if (list.isEmpty) return [];
    if (sep == null) return list;
    List modifiedList = [list.first];
    if (sep is Iterable) {
      list.sublist(1, list.length).forEach((e) {
        modifiedList.addAll([...sep, e]);
      });
    } else {
      list.sublist(1, list.length).forEach((e) {
        modifiedList.addAll([sep, e]);
      });
    }
    return modifiedList;
  }

  // /**
  //  * Check if l1's element are present in l2 then give position mapping for same
  //  */
  // static Map<int, int> equalityMapping<T>(List<T> l1, List<T> l2){
  //   var l2_t = [...l2];
  //   final m = <int, int>{};
  //   for(int i=0; i < l1.length; i++){
  //     T e_l1 = l1[i];
  //     int idx_l2 = l2_t.indexOf(e_l1);
  //     if(idx_l2 != -1){
  //        m[i] = idx_l2;
  //        l2_t[idx_l2] = null;
  //     }
  //   }
  //   return m;
  // }

  /**
   * Check if l1's element are present in l2 then give position mapping for same
   */
  static Map<int, int> equalityMapping<T>(List<T> l1, List<T> l2,
      {Map<int, int> preMap = const {}}) {
    var l2_t = <T>[...l2];
    final m = <int, int>{};
    for (var e in preMap.entries) {
      m[e.key] = e.value;
      l2_t[e.value] = null;
    }
    for (int i = 0; i < l1.length; i++) {
      if (preMap[i] == null) {
        T e_l1 = l1[i];
        int idx_l2 = l2_t.indexOf(e_l1);
        if (idx_l2 != -1) {
          m[i] = idx_l2;
          l2_t[idx_l2] = null;
        }
      }
    }
    return m;
  }

  static double _doSum(double a, double b) {
    return (a + b);
  }

  //sum()
  static num sum(List<num> l) {
    num r = 0;
    for (var n in l) {
      r += n;
    }
    // return l.reduce(_doSum);
    return r;
  }
}

void main() {
  var l = [20];

  //var ml = l.enumerateMap((i, e) => 'Number $e at index $i');

  var l1 = [1, 2, 3, 1];
  var l2 = [2.0, 3.0, 3.0, 1.0, 2.0, 1.0, 4.0, 6.0, 1.0];

  print(ListUtils.equalityMapping(l1, l2));

  print(ListUtils.sum(l1));

  l1.updateWhere(filter: (i,e) => e == 1, updater: (i,e) => e + 9);
  print(l1);
}
