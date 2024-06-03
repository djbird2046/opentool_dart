import 'parameters.dart';
import 'package:json_annotation/json_annotation.dart';

part 'function_model.g.dart';

@JsonSerializable()
class FunctionModel {
  late String name;
  late String description;
  late Parameters parameters;

  FunctionModel({required this.name, required this.description,required this.parameters});

  factory FunctionModel.fromJson(Map<String, dynamic> json) => _$FunctionModelFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionModelToJson(this);

}