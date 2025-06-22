import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
import 'package:github/model/code-scanning-autofix-description.dart';
extension type Code-scanning-autofix-description(String value) {
    factory Code-scanning-autofix-description.fromJson(String json) => Code-scanning-autofix-description(json);

    String toJson() => value;
}
