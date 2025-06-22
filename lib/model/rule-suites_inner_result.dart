import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_result.dart';
enum Rule-suitesInnerResult {
    pass._('pass'),
    fail._('fail'),
    bypass._('bypass'),
    ;

    const Rule-suitesInnerResult._(this.value);

    factory Rule-suitesInnerResult.fromJson(String json) {
        return Rule-suitesInnerResult.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suitesInnerResult value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suitesInnerResult? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suitesInnerResult.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
