import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/webhook-config-url.dart';
import 'package:github/model/webhook-config-url.dart';
extension type Webhook-config-url(String value) {
    factory Webhook-config-url.fromJson(String json) => Webhook-config-url(json);

    String toJson() => value;
}
