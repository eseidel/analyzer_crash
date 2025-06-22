import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
import 'package:github/model/rule-suite_rule_evaluations_inner_rule_source.dart';
@immutable
class Rule-suiteRuleEvaluationsInnerRuleSource {
    Rule-suiteRuleEvaluationsInnerRuleSource(
        {  this.type, this.id, this.name,
         }
    );

    factory Rule-suiteRuleEvaluationsInnerRuleSource.fromJson(Map<String, dynamic>
        json) {
        return Rule-suiteRuleEvaluationsInnerRuleSource(
            type: json['type'] as String? ,
            id: (json['id'] as int?).toInt() ,
            name: json['name'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rule-suiteRuleEvaluationsInnerRuleSource? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rule-suiteRuleEvaluationsInnerRuleSource.fromJson(json);
    }

    final  String? type;
    final  int? id;
    final  String? name;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'id': id,
            'name': name,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          id,
          name,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rule-suiteRuleEvaluationsInnerRuleSource
            && type == other.type
            && id == other.id
            && name == other.name
        ;
    }
}
