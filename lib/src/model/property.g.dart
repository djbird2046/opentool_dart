// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      type: $enumDecode(_$PropertyTypeEnumMap, json['type']),
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String,
      required: json['required'] as bool? ?? false,
    );

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'type': _$PropertyTypeEnumMap[instance.type]!,
      'enum': instance.enum_,
      'description': instance.description,
      'required': instance.required,
    };

const _$PropertyTypeEnumMap = {
  PropertyType.boolean: 'boolean',
  PropertyType.integer: 'integer',
  PropertyType.number: 'number',
  PropertyType.string: 'string',
};
