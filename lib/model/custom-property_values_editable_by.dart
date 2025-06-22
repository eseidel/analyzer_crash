import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
import 'package:github/model/custom-property_values_editable_by.dart';
enum Custom-propertyValuesEditableBy {
    orgActors._('org_actors'),
    orgAndRepoActors._('org_and_repo_actors'),
    ;

    const Custom-propertyValuesEditableBy._(this.value);

    factory Custom-propertyValuesEditableBy.fromJson(String json) {
        return Custom-propertyValuesEditableBy.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Custom-propertyValuesEditableBy value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Custom-propertyValuesEditableBy? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Custom-propertyValuesEditableBy.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
