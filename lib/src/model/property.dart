import 'package:json_annotation/json_annotation.dart';

part 'property.g.dart';

enum PropertyType {
  boolean,
  integer,
  number,
  string,
  array,
  object
}

@JsonSerializable()
class Property {
  PropertyType type;
  Map<String, Property>? properties;
  Property? items;
  @JsonKey(name: "enum")
  List<String>? enum_;
  String description;
  bool required;

  Property({
    required this.type,
    this.enum_,
    required this.description,
    this.required = false,
    this.items,
    this.properties
  });

  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);

}