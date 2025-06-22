import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
@immutable
class Repository-rule-commit-author-email-patternParameters {
    Repository-rule-commit-author-email-patternParameters(
        {  this.name, this.negate,required this.operator,required this.pattern,
         }
    );

    factory Repository-rule-commit-author-email-patternParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-commit-author-email-patternParameters(
            name: json['name'] as String? ,
            negate: (json['negate'] as bool?) ,
            operator: Repository-rule-commit-author-email-patternParametersOperator.fromJson(json['operator'] as String) ,
            pattern: json['pattern'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-commit-author-email-patternParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-commit-author-email-patternParameters.fromJson(json);
    }

    final  String? name;
    final  bool? negate;
    final Repository-rule-commit-author-email-patternParametersOperator  operator;
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
        return other is Repository-rule-commit-author-email-patternParameters
            && name == other.name
            && negate == other.negate
            && operator == other.operator
            && pattern == other.pattern
        ;
    }
}
