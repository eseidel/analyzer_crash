import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/projects/create_card422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';
import 'package:github/model/projects/create_card422_response.dart';
import 'package:github/model/validation-error.dart';
import 'package:github/model/validation-error_errors_inner.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error-simple.dart';

sealed class Projects&#x2F;createCard422Response {
    static Projects&#x2F;createCard422Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Projects&#x2F;createCard422Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Projects&#x2F;createCard422Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Projects&#x2F;createCard422Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
