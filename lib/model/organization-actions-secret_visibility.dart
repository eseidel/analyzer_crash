import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
import 'package:github/model/organization-actions-secret_visibility.dart';
enum Organization-actions-secretVisibility {
    all._('all'),
    private._('private'),
    selected._('selected'),
    ;

    const Organization-actions-secretVisibility._(this.value);

    factory Organization-actions-secretVisibility.fromJson(String json) {
        return Organization-actions-secretVisibility.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Organization-actions-secretVisibility value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-actions-secretVisibility? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Organization-actions-secretVisibility.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
