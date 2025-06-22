import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
import 'package:github/model/code-scanning-analysis-sarif-id.dart';
extension type Code-scanning-analysis-sarif-id(String value) {
    factory Code-scanning-analysis-sarif-id.fromJson(String json) => Code-scanning-analysis-sarif-id(json);

    String toJson() => value;
}
