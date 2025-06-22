import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
import 'package:github/model/rule-suite.dart';
import 'package:github/model/rule-suite_result.dart';
import 'package:github/model/rule-suite_evaluation_result.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_enforcement.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_result.dart';
@immutable
class Rule-suite {
    Rule-suite(
        {  this.id, this.actor_id, this.actor_name, this.before_sha, this.after_sha, this.ref, this.repository_id, this.repository_name, this.pushed_at, this.result, this.evaluation_result, this.rule_evaluations = const [],
         }
    );

    factory Rule-suite.fromJson(Map<String, dynamic>
        json) {
        return Rule-suite(
            id: (json['id'] as int?).toInt() ,
            actor_id: (json['actor_id'] as int?).toInt() ,
            actor_name: json['actor_name'] as String? ,
            before_sha: json['before_sha'] as String? ,
            after_sha: json['after_sha'] as String? ,
            ref: json['ref'] as String? ,
            repository_id: (json['repository_id'] as int?).toInt() ,
            repository_name: json['repository_name'] as String? ,
            pushed_at: maybeParseDateTime(json['pushed_at'] as String?) ,
            result: Rule-suiteResult.maybeFromJson(json['result'] as String?) ,
            evaluation_result: Rule-suiteEvaluationResult.maybeFromJson(json['evaluation_result'] as String?) ,
            rule_evaluations: (json['rule_evaluations'] as List?)?.map<Rule-suiteRuleEvaluationsInner>((e) => Rule-suiteRuleEvaluationsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suite? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rule-suite.fromJson(json);
    }

    final  int? id;
    final  int? actor_id;
    final  String? actor_name;
    final  String? before_sha;
    final  String? after_sha;
    final  String? ref;
    final  int? repository_id;
    final  String? repository_name;
    final  DateTime? pushed_at;
    final  Rule-suiteResult? result;
    final  Rule-suiteEvaluationResult? evaluation_result;
    final  List<Rule-suiteRuleEvaluationsInner>? rule_evaluations;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'actor_id': actor_id,
            'actor_name': actor_name,
            'before_sha': before_sha,
            'after_sha': after_sha,
            'ref': ref,
            'repository_id': repository_id,
            'repository_name': repository_name,
            'pushed_at': pushed_at?.toIso8601String(),
            'result': result?.toJson(),
            'evaluation_result': evaluation_result?.toJson(),
            'rule_evaluations': rule_evaluations?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          actor_id,
          actor_name,
          before_sha,
          after_sha,
          ref,
          repository_id,
          repository_name,
          pushed_at,
          result,
          evaluation_result,
          rule_evaluations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rule-suite
            && id == other.id
            && actor_id == other.actor_id
            && actor_name == other.actor_name
            && before_sha == other.before_sha
            && after_sha == other.after_sha
            && ref == other.ref
            && repository_id == other.repository_id
            && repository_name == other.repository_name
            && pushed_at == other.pushed_at
            && result == other.result
            && evaluation_result == other.evaluation_result
            && listsEqual(rule_evaluations, other.rule_evaluations)
        ;
    }
}
