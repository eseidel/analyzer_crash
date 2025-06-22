import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-severity.dart';
import 'package:github/model/code-scanning-alert-severity.dart';
enum Code-scanning-alert-severity {
    critical._('critical'),
    high._('high'),
    medium._('medium'),
    low._('low'),
    warning._('warning'),
    note._('note'),
    error._('error'),
    ;

    const Code-scanning-alert-severity._(this.value);

    factory Code-scanning-alert-severity.fromJson(String json) {
        return Code-scanning-alert-severity.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-severity value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-severity? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-severity.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
