import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-ref.dart';
import 'package:github/model/code-scanning-ref.dart';
extension type Code-scanning-ref(String value) {
    factory Code-scanning-ref.fromJson(String json) => Code-scanning-ref(json);

    String toJson() => value;
}
