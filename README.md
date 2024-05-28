# opentool_dart
An OpenTool JSON Spec Parser for dart
Inspired by OpenAPI, OpenRPC, and OpenAI `function calling` example.

## Features

- Load OpenTool json file, and convert to dart object

## Usage

According to `/example/opentool_dart_example.dart`

```dart
String jsonPath = "$currentWorkingDirectory/example/json/$jsonFileName";
OpenToolLoader openToolLoader = OpenToolLoader();
OpenTool openTool = await openToolLoader.load(jsonPath);
```