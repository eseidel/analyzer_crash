import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-committer-email-pattern.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-committer-email-pattern.dart';
import 'package:github/model/repository-rule-committer-email-pattern_type.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters.dart';
import 'package:github/model/repository-rule-committer-email-pattern_parameters_operator.dart';
@immutable
class Repository-rule-committer-email-pattern {
    Repository-rule-committer-email-pattern(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-committer-email-pattern.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-committer-email-pattern(
            type: Repository-rule-committer-email-patternType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-committer-email-patternParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-committer-email-pattern? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-committer-email-pattern.fromJson(json);
    }

    final Repository-rule-committer-email-patternType  type;
    final  Repository-rule-committer-email-patternParameters? parameters;


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
        return other is Repository-rule-committer-email-pattern
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
