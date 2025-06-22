import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';

sealed class IntegrationOwner {
  static IntegrationOwner fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('IntegrationOwner.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IntegrationOwner? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IntegrationOwner.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
