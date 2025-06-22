import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
enum Rule-suiteEvaluationResult {
    pass._('pass'),
    fail._('fail'),
    bypass._('bypass'),
    ;

    const Rule-suiteEvaluationResult._(this.value);

    factory Rule-suiteEvaluationResult.fromJson(String json) {
        return Rule-suiteEvaluationResult.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suiteEvaluationResult value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteEvaluationResult? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteEvaluationResult.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
