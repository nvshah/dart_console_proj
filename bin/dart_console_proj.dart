import 'package:dart_console_proj/anchor_split.dart';
import 'package:dart_console_proj/collections_sequence/list_equality_selfcheck.dart'
    as dcp;
import 'package:dart_console_proj/freezed_comcept.dart';
import 'package:trotter/trotter.dart';

void main(List<String> arguments) {
  //final b = dcp.equals([1], [2]);
  //print(b);

  //getLogTextChunks(msg: "Nicho3645 posts small blind 2");

  //print([1, 2, 3, 1].permutations(2).iterable.toList());

  var p = Person(name: "Manoj", gender: Gender.Male);

  var j = {"name": "jenisha", "gender": "Female"};

  var p2 = Person.fromJson(j);

  print(p2);
}
