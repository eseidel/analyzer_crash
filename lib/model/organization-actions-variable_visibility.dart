import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
import 'package:github/model/organization-actions-variable_visibility.dart';
enum Organization-actions-variableVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Organization-actions-variableVisibility._(this.value);

    factory Organization-actions-variableVisibility.fromJson(String json) {
        return Organization-actions-variableVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-actions-variableVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-actions-variableVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-actions-variableVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
