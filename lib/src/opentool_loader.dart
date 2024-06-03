import 'dart:convert';
import 'dart:io';

import '/src/model/open_tool.dart';

class OpenToolLoader {
  Future<OpenTool> load(String jsonString) async {
    Map<String, dynamic> openToolMap = jsonDecode(jsonString);
    OpenTool openTool = OpenTool.fromJson(openToolMap);
    return openTool;
  }

  Future<OpenTool> loadFromFile(String jsonPath) async {
    File file = File(jsonPath);
    String jsonString = await file.readAsString();
    return load(jsonString);
  }
}