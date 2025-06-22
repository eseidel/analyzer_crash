import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';

sealed class InstallationAccount {
  static InstallationAccount fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('InstallationAccount.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationAccount? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return InstallationAccount.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
