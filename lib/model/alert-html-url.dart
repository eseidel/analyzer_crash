import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/alert-html-url.dart';
extension type Alert-html-url(String value) {
    factory Alert-html-url.fromJson(String json) => Alert-html-url(json);

    String toJson() => value;
}
