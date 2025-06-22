import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
import 'package:github/model/code-scanning-alert-dismissed-reason.dart';
enum Code-scanning-alert-dismissed-reason {
    false positive._('false positive'),
    won&#x27;t fix._('won&#x27;t fix'),
    used in tests._('used in tests'),
    ;

    const Code-scanning-alert-dismissed-reason._(this.value);

    factory Code-scanning-alert-dismissed-reason.fromJson(String json) {
        return Code-scanning-alert-dismissed-reason.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-alert-dismissed-reason value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-dismissed-reason? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-dismissed-reason.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
