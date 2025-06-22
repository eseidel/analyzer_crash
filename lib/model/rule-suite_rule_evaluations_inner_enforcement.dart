import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
enum Rule-suiteRuleEvaluationsInnerEnforcement {
    active._('active'),
    evaluate._('evaluate'),
    deleted ruleset._('deleted ruleset'),
    ;

    const Rule-suiteRuleEvaluationsInnerEnforcement._(this.value);

    factory Rule-suiteRuleEvaluationsInnerEnforcement.fromJson(String json) {
        return Rule-suiteRuleEvaluationsInnerEnforcement.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Rule-suiteRuleEvaluationsInnerEnforcement value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteRuleEvaluationsInnerEnforcement? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteRuleEvaluationsInnerEnforcement.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
