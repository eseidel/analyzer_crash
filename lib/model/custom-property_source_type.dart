import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property_source_type.dart';
import 'package:github/model/custom-property_source_type.dart';
enum Custom-propertySourceType {
    organization._('organization'),
    enterprise._('enterprise'),
    ;

    const Custom-propertySourceType._(this.value);

    factory Custom-propertySourceType.fromJson(String json) {
        return Custom-propertySourceType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Custom-propertySourceType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-propertySourceType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Custom-propertySourceType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
