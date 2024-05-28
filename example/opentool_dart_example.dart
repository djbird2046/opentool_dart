import 'dart:io';

import 'package:opentool_dart/opentool_dart.dart';
void main() async {
  List<String> jsonFileNameList = [];
  jsonFileNameList.add("database-example.json");
  jsonFileNameList.add("weather-example.json");

  String currentWorkingDirectory = Directory.current.path;
  jsonFileNameList.forEach((jsonFileName) async {
    print("FILE_NAME: $jsonFileName");
    String jsonPath = "$currentWorkingDirectory/example/json/$jsonFileName";
    OpenToolLoader openToolLoader = OpenToolLoader();
    OpenTool openTool = await openToolLoader.load(jsonPath);
    print("title: ${openTool.info.title}");
  });
}
