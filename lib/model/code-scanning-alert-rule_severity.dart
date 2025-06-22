import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
import 'package:github/model/code-scanning-alert-rule_severity.dart';
enum Code-scanning-alert-ruleSeverity {
    none._('none'),
    note._('note'),
    warning._('warning'),
    error._('error'),
    ;

    const Code-scanning-alert-ruleSeverity._(this.value);

    factory Code-scanning-alert-ruleSeverity.fromJson(String json) {
        return Code-scanning-alert-ruleSeverity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-ruleSeverity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-ruleSeverity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-ruleSeverity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
