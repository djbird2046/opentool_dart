import 'package:opentool_dart/src/model/property.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parameters.g.dart';

@JsonSerializable()
class Parameters {
  late String type;
  late Map<String, Property> properties;

  Parameters({required this.type, required this.properties});

  factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);

  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}