import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration-installation-request_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';

sealed class Integration-installation-requestAccount {
    static Integration-installation-requestAccount fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Integration-installation-requestAccount.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Integration-installation-requestAccount? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Integration-installation-requestAccount.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
