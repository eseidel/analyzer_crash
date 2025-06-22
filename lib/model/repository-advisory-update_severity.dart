import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-advisory-update_severity.dart';
import 'package:github/model/repository-advisory-update_severity.dart';
enum Repository-advisory-updateSeverity {
    critical._('critical'),
    high._('high'),
    medium._('medium'),
    low._('low'),
    ;

    const Repository-advisory-updateSeverity._(this.value);

    factory Repository-advisory-updateSeverity.fromJson(String json) {
        return Repository-advisory-updateSeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repository-advisory-updateSeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-advisory-updateSeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repository-advisory-updateSeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
