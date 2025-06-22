import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property_value_type.dart';
import 'package:github/model/custom-property_value_type.dart';
enum Custom-propertyValueType {
    string._('string'),
    singleSelect._('single_select'),
    multiSelect._('multi_select'),
    trueFalse._('true_false'),
    ;

    const Custom-propertyValueType._(this.value);

    factory Custom-propertyValueType.fromJson(String json) {
        return Custom-propertyValueType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Custom-propertyValueType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-propertyValueType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Custom-propertyValueType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
