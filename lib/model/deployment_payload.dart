import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/deployment_payload.dart';
import 'package:github/model/deployment_payload.dart';

sealed class DeploymentPayload {
  static DeploymentPayload fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('DeploymentPayload.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentPayload? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return DeploymentPayload.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
