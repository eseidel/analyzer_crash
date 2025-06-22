import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
enum Rule-suiteRuleEvaluationsInnerResult {
    pass._('pass'),
    fail._('fail'),
    ;

    const Rule-suiteRuleEvaluationsInnerResult._(this.value);

    factory Rule-suiteRuleEvaluationsInnerResult.fromJson(String json) {
        return Rule-suiteRuleEvaluationsInnerResult.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suiteRuleEvaluationsInnerResult value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteRuleEvaluationsInnerResult? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteRuleEvaluationsInnerResult.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
