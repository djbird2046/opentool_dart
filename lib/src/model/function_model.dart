import 'dart:convert';
import 'package:opentool_dart/src/model/parameters.dart';

import 'property.dart';
import 'package:json_annotation/json_annotation.dart';

part 'function_model.g.dart';

@JsonSerializable()
class FunctionModel {
  late String name;
  late String description;
  late Parameters parameters;

  FunctionModel({required this.name, required this.description,required this.parameters});

  // factory FunctionModel.withParameters({
  //   required String name,
  //   String? description,
  //   required Iterable<Property> parameters,
  // }) {
  //   return FunctionModel(
  //     name: name,
  //     description: description,
  //     parametersSchema: Property.object(
  //       name: '',
  //       properties: parameters,
  //     ).typeMap(),
  //   );
  // }

  factory FunctionModel.fromJson(Map<String, dynamic> json) => _$FunctionModelFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionModelToJson(this);

  // factory FunctionModel.fromMap(Map<String, dynamic> map) {
  //   return FunctionModel(
  //     name: map['name'],
  //     parametersSchema: jsonDecode(map['arguments']) as Map<String, dynamic>,
  //   );
  // }
  //
  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     if (description != null) 'description': description,
  //     'parameters': parametersSchema,
  //   };
  // }
}