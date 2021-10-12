import 'dart:html';

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_comcept.freezed.dart';
part 'freezed_comcept.g.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    @required String name,
    @Default(Gender.None) Gender gender,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

enum Gender { Male, Female, None }
