import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
import 'package:github/model/code-scanning-variant-analysis-status.dart';
enum Code-scanning-variant-analysis-status {
    pending._('pending'),
    inProgress._('in_progress'),
    succeeded._('succeeded'),
    failed._('failed'),
    canceled._('canceled'),
    timedOut._('timed_out'),
    ;

    const Code-scanning-variant-analysis-status._(this.value);

    factory Code-scanning-variant-analysis-status.fromJson(String json) {
        return Code-scanning-variant-analysis-status.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Code-scanning-variant-analysis-status value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-variant-analysis-status? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-variant-analysis-status.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
