import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';
import 'package:github/model/webhook-config-insecure-ssl.dart';

sealed class Webhook-config-insecure-ssl {
    static Webhook-config-insecure-ssl fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Webhook-config-insecure-ssl.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Webhook-config-insecure-ssl? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Webhook-config-insecure-ssl.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
