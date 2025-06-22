import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
import 'package:github/model/code-scanning-alert-rule-summary_security_severity_level.dart';
enum Code-scanning-alert-rule-summarySecuritySeverityLevel {
    low._('low'),
    medium._('medium'),
    high._('high'),
    critical._('critical'),
    ;

    const Code-scanning-alert-rule-summarySecuritySeverityLevel._(this.value);

    factory Code-scanning-alert-rule-summarySecuritySeverityLevel.fromJson(String json) {
        return Code-scanning-alert-rule-summarySecuritySeverityLevel.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-rule-summarySecuritySeverityLevel value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-rule-summarySecuritySeverityLevel? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-rule-summarySecuritySeverityLevel.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
