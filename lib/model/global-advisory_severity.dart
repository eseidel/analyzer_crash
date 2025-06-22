import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/global-advisory_severity.dart';
import 'package:github/model/global-advisory_severity.dart';
enum Global-advisorySeverity {
    critical._('critical'),
    high._('high'),
    medium._('medium'),
    low._('low'),
    unknown._('unknown'),
    ;

    const Global-advisorySeverity._(this.value);

    factory Global-advisorySeverity.fromJson(String json) {
        return Global-advisorySeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Global-advisorySeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Global-advisorySeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Global-advisorySeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
