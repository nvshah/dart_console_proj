// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_comcept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
class _$PersonTearOff {
  const _$PersonTearOff();

// ignore: unused_element
  _Person call({@required String name, Gender gender = Gender.None}) {
    return _Person(
      name: name,
      gender: gender,
    );
  }

// ignore: unused_element
  Person fromJson(Map<String, Object> json) {
    return Person.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Person = _$PersonTearOff();

/// @nodoc
mixin _$Person {
  String get name;
  Gender get gender;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call({String name, Gender gender});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object name = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

/// @nodoc
abstract class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) then) =
      __$PersonCopyWithImpl<$Res>;
  @override
  $Res call({String name, Gender gender});
}

/// @nodoc
class __$PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(_Person _value, $Res Function(_Person) _then)
      : super(_value, (v) => _then(v as _Person));

  @override
  _Person get _value => super._value as _Person;

  @override
  $Res call({
    Object name = freezed,
    Object gender = freezed,
  }) {
    return _then(_Person(
      name: name == freezed ? _value.name : name as String,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Person implements _Person {
  const _$_Person({@required this.name, this.gender = Gender.None})
      : assert(name != null),
        assert(gender != null);

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonFromJson(json);

  @override
  final String name;
  @JsonKey(defaultValue: Gender.None)
  @override
  final Gender gender;

  @override
  String toString() {
    return 'Person(name: $name, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Person &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$PersonCopyWith<_Person> get copyWith =>
      __$PersonCopyWithImpl<_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonToJson(this);
  }
}

abstract class _Person implements Person {
  const factory _Person({@required String name, Gender gender}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  String get name;
  @override
  Gender get gender;
  @override
  @JsonKey(ignore: true)
  _$PersonCopyWith<_Person> get copyWith;
}
