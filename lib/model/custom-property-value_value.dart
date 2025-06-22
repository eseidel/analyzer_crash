import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property-value_value.dart';
import 'package:github/model/custom-property-value_value.dart';

sealed class Custom-property-valueValue {
    static Custom-property-valueValue fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Custom-property-valueValue.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property-valueValue? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Custom-property-valueValue.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
