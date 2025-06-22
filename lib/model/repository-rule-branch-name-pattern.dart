import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-branch-name-pattern.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-branch-name-pattern.dart';
import 'package:github/model/repository-rule-branch-name-pattern_type.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-branch-name-pattern_parameters_operator.dart';
@immutable
class Repository-rule-branch-name-pattern {
    Repository-rule-branch-name-pattern(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-branch-name-pattern.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-branch-name-pattern(
            type: Repository-rule-branch-name-patternType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-branch-name-patternParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-branch-name-pattern? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-branch-name-pattern.fromJson(json);
    }

    final Repository-rule-branch-name-patternType  type;
    final  Repository-rule-branch-name-patternParameters? parameters;


    Map<String, dynamic> toJson() {
        return {
            'type': type.toJson(),
            'parameters': parameters?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          parameters,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-branch-name-pattern
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
