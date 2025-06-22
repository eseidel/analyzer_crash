import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
@immutable
class Repository-rule-committer-email-patternParameters {
    Repository-rule-committer-email-patternParameters(
        {  this.name, this.negate,required this.operator,required this.pattern,
         }
    );

    factory Repository-rule-committer-email-patternParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-committer-email-patternParameters(
            name: json['name'] as String? ,
            negate: (json['negate'] as bool?) ,
            operator: Repository-rule-committer-email-patternParametersOperator.fromJson(json['operator'] as String) ,
            pattern: json['pattern'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-committer-email-patternParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-committer-email-patternParameters.fromJson(json);
    }

    final  String? name;
    final  bool? negate;
    final Repository-rule-committer-email-patternParametersOperator  operator;
    final String  pattern;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'negate': negate,
            'operator': operator.toJson(),
            'pattern': pattern,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          negate,
          operator,
          pattern,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-committer-email-patternParameters
            && name == other.name
            && negate == other.negate
            && operator == other.operator
            && pattern == other.pattern
        ;
    }
}
