// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_comcept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$_$_PersonFromJson(Map<String, dynamic> json) {
  return _$_Person(
    name: json['name'] as String,
    gender:
        _$enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.None,
  );
}

Map<String, dynamic> _$_$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.None: 'None',
};
