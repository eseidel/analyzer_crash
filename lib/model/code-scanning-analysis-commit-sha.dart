import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
import 'package:github/model/code-scanning-analysis-commit-sha.dart';
extension type Code-scanning-analysis-commit-sha(String value) {
    factory Code-scanning-analysis-commit-sha.fromJson(String json) => Code-scanning-analysis-commit-sha(json);

    String toJson() => value;
}
