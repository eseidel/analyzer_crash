import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/orgs/update422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';

sealed class Orgs&#x2F;update422Response {
    static Orgs&#x2F;update422Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Orgs&#x2F;update422Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;update422Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;update422Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
