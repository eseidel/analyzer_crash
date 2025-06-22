import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-comma-separated-has.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';
import 'package:github/model/dependabot-alert-comma-separated-has.dart';
import 'package:github/model/dependabot-alert-comma-separated-has_inner.dart';

sealed class Dependabot-alert-comma-separated-has {
    static Dependabot-alert-comma-separated-has fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Dependabot-alert-comma-separated-has.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-comma-separated-has? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-comma-separated-has.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
