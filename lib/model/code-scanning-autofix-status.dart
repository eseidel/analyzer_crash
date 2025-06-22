import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
import 'package:github/model/code-scanning-autofix-status.dart';
enum Code-scanning-autofix-status {
    pending._('pending'),
    error._('error'),
    success._('success'),
    outdated._('outdated'),
    ;

    const Code-scanning-autofix-status._(this.value);

    factory Code-scanning-autofix-status.fromJson(String json) {
        return Code-scanning-autofix-status.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-autofix-status value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-autofix-status? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-autofix-status.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
