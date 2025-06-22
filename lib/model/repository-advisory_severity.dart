import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory_severity.dart';
import 'package:github/model/repository-advisory_severity.dart';
enum Repository-advisorySeverity {
    critical._('critical'),
    high._('high'),
    medium._('medium'),
    low._('low'),
    ;

    const Repository-advisorySeverity._(this.value);

    factory Repository-advisorySeverity.fromJson(String json) {
        return Repository-advisorySeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisorySeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisorySeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisorySeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
