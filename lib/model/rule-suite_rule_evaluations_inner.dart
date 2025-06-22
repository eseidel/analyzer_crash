import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
@immutable
class Rule-suiteRuleEvaluationsInner {
    Rule-suiteRuleEvaluationsInner(
        {  this.rule_source, this.enforcement, this.result, this.rule_type, this.details,
         }
    );

    factory Rule-suiteRuleEvaluationsInner.fromJson(Map<String, dynamic>
        json) {
        return Rule-suiteRuleEvaluationsInner(
            rule_source: Rule-suiteRuleEvaluationsInnerRuleSource.maybeFromJson(json['rule_source'] as Map<String, dynamic>?) ,
            enforcement: Rule-suiteRuleEvaluationsInnerEnforcement.maybeFromJson(json['enforcement'] as String?) ,
            result: Rule-suiteRuleEvaluationsInnerResult.maybeFromJson(json['result'] as String?) ,
            rule_type: json['rule_type'] as String? ,
            details: json['details'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteRuleEvaluationsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteRuleEvaluationsInner.fromJson(json);
    }

    final  Rule-suiteRuleEvaluationsInnerRuleSource? rule_source;
    final  Rule-suiteRuleEvaluationsInnerEnforcement? enforcement;
    final  Rule-suiteRuleEvaluationsInnerResult? result;
    final  String? rule_type;
    final  String? details;


    Map<String, dynamic> toJson() {
        return {
            'rule_source': rule_source?.toJson(),
            'enforcement': enforcement?.toJson(),
            'result': result?.toJson(),
            'rule_type': rule_type,
            'details': details,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          rule_source,
          enforcement,
          result,
          rule_type,
          details,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rule-suiteRuleEvaluationsInner
            && rule_source == other.rule_source
            && enforcement == other.enforcement
            && result == other.result
            && rule_type == other.rule_type
            && details == other.details
        ;
    }
}
