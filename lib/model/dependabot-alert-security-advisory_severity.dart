import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
import 'package:github/model/dependabot-alert-security-advisory_severity.dart';
enum Dependabot-alert-security-advisorySeverity {
    low._('low'),
    medium._('medium'),
    high._('high'),
    critical._('critical'),
    ;

    const Dependabot-alert-security-advisorySeverity._(this.value);

    factory Dependabot-alert-security-advisorySeverity.fromJson(String json) {
        return Dependabot-alert-security-advisorySeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Dependabot-alert-security-advisorySeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot-alert-security-advisorySeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Dependabot-alert-security-advisorySeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
