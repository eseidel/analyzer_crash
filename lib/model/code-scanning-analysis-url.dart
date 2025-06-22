import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
import 'package:github/model/code-scanning-analysis-url.dart';
extension type Code-scanning-analysis-url(String value) {
    factory Code-scanning-analysis-url.fromJson(String json) => Code-scanning-analysis-url(json);

    String toJson() => value;
}
