import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/webhook-config-content-type.dart';
import 'package:github/model/webhook-config-content-type.dart';
extension type Webhook-config-content-type(String value) {
    factory Webhook-config-content-type.fromJson(String json) => Webhook-config-content-type(json);

    String toJson() => value;
}
