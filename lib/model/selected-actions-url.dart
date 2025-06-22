import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/selected-actions-url.dart';
import 'package:github/model/selected-actions-url.dart';
extension type Selected-actions-url(String value) {
    factory Selected-actions-url.fromJson(String json) => Selected-actions-url(json);

    String toJson() => value;
}
