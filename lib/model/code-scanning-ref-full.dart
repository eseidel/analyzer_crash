import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-ref-full.dart';
import 'package:github/model/code-scanning-ref-full.dart';
extension type Code-scanning-ref-full(String value) {
    factory Code-scanning-ref-full.fromJson(String json) => Code-scanning-ref-full(json);

    String toJson() => value;
}
