import '../../opentool_dart.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info.dart';

part 'open_tool.g.dart';

@JsonSerializable()
class OpenTool {
  late String opentool;
  late Info info;
  late List<FunctionModel> functions;

  OpenTool({required this.opentool, required this.info, required this.functions});

  factory OpenTool.fromJson(Map<String, dynamic> json) => _$OpenToolFromJson(json);

  Map<String, dynamic> toJson() => _$OpenToolToJson(this);
}