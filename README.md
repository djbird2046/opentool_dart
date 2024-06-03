# opentool_dart
An OpenTool JSON Spec Parser for dart.

Inspired by OpenAPI, OpenRPC, and OpenAI `function calling` example.

## Features

- Load OpenTool json file, and convert to dart object.

## Usage

According to `/example/opentool_dart_example.dart`.

- From JSON String
```dart
Future<void> main() async {
  String jsonString = "{...OpenTool String...}";
  OpenToolLoader openToolLoader = OpenToolLoader();
  OpenTool openTool = await openToolLoader.load(jsonString);
}
```
- From JSON File
```dart
Future<void> main() async {
  String jsonPath = "$currentWorkingDirectory/example/json/$jsonFileName";
  OpenToolLoader openToolLoader = OpenToolLoader();
  OpenTool openTool = await openToolLoader.loadFromFile(jsonPath); 
}
```