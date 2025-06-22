import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
@immutable
class Repository-rule-branch-name-patternParameters {
    Repository-rule-branch-name-patternParameters(
        {  this.name, this.negate,required this.operator,required this.pattern,
         }
    );

    factory Repository-rule-branch-name-patternParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-branch-name-patternParameters(
            name: json['name'] as String? ,
            negate: (json['negate'] as bool?) ,
            operator: Repository-rule-branch-name-patternParametersOperator.fromJson(json['operator'] as String) ,
            pattern: json['pattern'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-branch-name-patternParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-branch-name-patternParameters.fromJson(json);
    }

    final  String? name;
    final  bool? negate;
    final Repository-rule-branch-name-patternParametersOperator  operator;
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
        return other is Repository-rule-branch-name-patternParameters
            && name == other.name
            && negate == other.negate
            && operator == other.operator
            && pattern == other.pattern
        ;
    }
}
