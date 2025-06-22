import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-create_severity.dart';
import 'package:github/model/repository-advisory-create_severity.dart';
enum Repository-advisory-createSeverity {
    critical._('critical'),
    high._('high'),
    medium._('medium'),
    low._('low'),
    ;

    const Repository-advisory-createSeverity._(this.value);

    factory Repository-advisory-createSeverity.fromJson(String json) {
        return Repository-advisory-createSeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisory-createSeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-createSeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-createSeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
