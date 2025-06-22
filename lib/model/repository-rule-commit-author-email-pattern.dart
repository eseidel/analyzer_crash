import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_type.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-commit-author-email-pattern_parameters_operator.dart';
@immutable
class Repository-rule-commit-author-email-pattern {
    Repository-rule-commit-author-email-pattern(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-commit-author-email-pattern.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-commit-author-email-pattern(
            type: Repository-rule-commit-author-email-patternType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-commit-author-email-patternParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-commit-author-email-pattern? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-commit-author-email-pattern.fromJson(json);
    }

    final Repository-rule-commit-author-email-patternType  type;
    final  Repository-rule-commit-author-email-patternParameters? parameters;


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
        return other is Repository-rule-commit-author-email-pattern
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
