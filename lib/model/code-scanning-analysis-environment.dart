import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
import 'package:github/model/code-scanning-analysis-environment.dart';
extension type Code-scanning-analysis-environment(String value) {
    factory Code-scanning-analysis-environment.fromJson(String json) => Code-scanning-analysis-environment(json);

    String toJson() => value;
}
