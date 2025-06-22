import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
import 'package:github/model/code-scanning-alert-environment.dart';
extension type Code-scanning-alert-environment(String value) {
    factory Code-scanning-alert-environment.fromJson(String json) => Code-scanning-alert-environment(json);

    String toJson() => value;
}
