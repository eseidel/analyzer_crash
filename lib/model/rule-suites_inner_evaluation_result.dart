import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
enum Rule-suitesInnerEvaluationResult {
    pass._('pass'),
    fail._('fail'),
    bypass._('bypass'),
    ;

    const Rule-suitesInnerEvaluationResult._(this.value);

    factory Rule-suitesInnerEvaluationResult.fromJson(String json) {
        return Rule-suitesInnerEvaluationResult.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suitesInnerEvaluationResult value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suitesInnerEvaluationResult? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suitesInnerEvaluationResult.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
