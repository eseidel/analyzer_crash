import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-sarif-file.dart';
import 'package:github/model/code-scanning-analysis-sarif-file.dart';
extension type Code-scanning-analysis-sarif-file(String value) {
    factory Code-scanning-analysis-sarif-file.fromJson(String json) => Code-scanning-analysis-sarif-file(json);

    String toJson() => value;
}
