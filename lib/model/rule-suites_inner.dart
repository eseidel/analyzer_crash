import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
import 'package:github/model/rule-suites_inner.dart';
import 'package:github/model/rule-suites_inner_result.dart';
import 'package:github/model/rule-suites_inner_evaluation_result.dart';
@immutable
class Rule-suitesInner {
    Rule-suitesInner(
        {  this.id, this.actor_id, this.actor_name, this.before_sha, this.after_sha, this.ref, this.repository_id, this.repository_name, this.pushed_at, this.result, this.evaluation_result,
         }
    );

    factory Rule-suitesInner.fromJson(Map<String, dynamic>
        json) {
        return Rule-suitesInner(
            id: (json['id'] as int?).toInt() ,
            actor_id: (json['actor_id'] as int?).toInt() ,
            actor_name: json['actor_name'] as String? ,
            before_sha: json['before_sha'] as String? ,
            after_sha: json['after_sha'] as String? ,
            ref: json['ref'] as String? ,
            repository_id: (json['repository_id'] as int?).toInt() ,
            repository_name: json['repository_name'] as String? ,
            pushed_at: maybeParseDateTime(json['pushed_at'] as String?) ,
            result: Rule-suitesInnerResult.maybeFromJson(json['result'] as String?) ,
            evaluation_result: Rule-suitesInnerEvaluationResult.maybeFromJson(json['evaluation_result'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suitesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rule-suitesInner.fromJson(json);
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
    final  Rule-suitesInnerResult? result;
    final  Rule-suitesInnerEvaluationResult? evaluation_result;


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
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rule-suitesInner
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
        ;
    }
}
