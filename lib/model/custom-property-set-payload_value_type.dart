import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property-set-payload_value_type.dart';
import 'package:github/model/custom-property-set-payload_value_type.dart';
enum Custom-property-set-payloadValueType {
    string._('string'),
    singleSelect._('single_select'),
    multiSelect._('multi_select'),
    trueFalse._('true_false'),
    ;

    const Custom-property-set-payloadValueType._(this.value);

    factory Custom-property-set-payloadValueType.fromJson(String json) {
        return Custom-property-set-payloadValueType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Custom-property-set-payloadValueType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property-set-payloadValueType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Custom-property-set-payloadValueType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
