import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
import 'package:github/model/code-scanning-analysis-category.dart';
extension type Code-scanning-analysis-category(String value) {
    factory Code-scanning-analysis-category.fromJson(String json) => Code-scanning-analysis-category(json);

    String toJson() => value;
}
