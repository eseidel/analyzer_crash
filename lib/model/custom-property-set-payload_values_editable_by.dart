import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property-set-payload_values_editable_by.dart';
import 'package:github/model/custom-property-set-payload_values_editable_by.dart';
enum Custom-property-set-payloadValuesEditableBy {
    orgActors._('org_actors'),
    orgAndRepoActors._('org_and_repo_actors'),
    ;

    const Custom-property-set-payloadValuesEditableBy._(this.value);

    factory Custom-property-set-payloadValuesEditableBy.fromJson(String json) {
        return Custom-property-set-payloadValuesEditableBy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Custom-property-set-payloadValuesEditableBy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-property-set-payloadValuesEditableBy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Custom-property-set-payloadValuesEditableBy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
