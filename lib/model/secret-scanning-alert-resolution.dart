import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
enum Secret-scanning-alert-resolution {
    falsePositive._('false_positive'),
    wontFix._('wont_fix'),
    revoked._('revoked'),
    usedInTests._('used_in_tests'),
    ;

    const Secret-scanning-alert-resolution._(this.value);

    factory Secret-scanning-alert-resolution.fromJson(String json) {
        return Secret-scanning-alert-resolution.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-alert-resolution value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-alert-resolution? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-alert-resolution.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
