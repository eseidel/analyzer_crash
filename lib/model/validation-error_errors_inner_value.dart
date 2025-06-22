import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';
import 'package:github/model/validation-error_errors_inner_value.dart';

sealed class Validation-errorErrorsInnerValue {
    static Validation-errorErrorsInnerValue fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Validation-errorErrorsInnerValue.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Validation-errorErrorsInnerValue? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Validation-errorErrorsInnerValue.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
