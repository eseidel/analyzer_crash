import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_result.dart';
enum Rule-suiteResult {
    pass._('pass'),
    fail._('fail'),
    bypass._('bypass'),
    ;

    const Rule-suiteResult._(this.value);

    factory Rule-suiteResult.fromJson(String json) {
        return Rule-suiteResult.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suiteResult value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteResult? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteResult.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
