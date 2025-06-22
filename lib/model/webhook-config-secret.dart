import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/webhook-config-secret.dart';
import 'package:github/model/webhook-config-secret.dart';
extension type Webhook-config-secret(String value) {
    factory Webhook-config-secret.fromJson(String json) => Webhook-config-secret(json);

    String toJson() => value;
}
