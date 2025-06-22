import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property_default_value.dart';
import 'package:github/model/custom-property_default_value.dart';

sealed class Custom-propertyDefaultValue {
    static Custom-propertyDefaultValue fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Custom-propertyDefaultValue.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-propertyDefaultValue? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Custom-propertyDefaultValue.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
