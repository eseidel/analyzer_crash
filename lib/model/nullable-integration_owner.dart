import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';

sealed class Nullable-integrationOwner {
    static Nullable-integrationOwner fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Nullable-integrationOwner.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-integrationOwner? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Nullable-integrationOwner.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
