// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parameters _$ParametersFromJson(Map<String, dynamic> json) => Parameters(
      type: json['type'] as String,
      properties: (json['properties'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Property.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ParametersToJson(Parameters instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
    };
