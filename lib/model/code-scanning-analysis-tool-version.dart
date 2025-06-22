import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
import 'package:github/model/code-scanning-analysis-tool-version.dart';
extension type Code-scanning-analysis-tool-version(String value) {
    factory Code-scanning-analysis-tool-version.fromJson(String json) => Code-scanning-analysis-tool-version(json);

    String toJson() => value;
}
