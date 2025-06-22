import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-tag-name-pattern.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
import 'package:github/model/repository-rule-tag-name-pattern.dart';
import 'package:github/model/repository-rule-tag-name-pattern_type.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters.dart';
import 'package:github/model/repository-rule-tag-name-pattern_parameters_operator.dart';
@immutable
class Repository-rule-tag-name-pattern {
    Repository-rule-tag-name-pattern(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-tag-name-pattern.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-tag-name-pattern(
            type: Repository-rule-tag-name-patternType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-tag-name-patternParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-tag-name-pattern? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-tag-name-pattern.fromJson(json);
    }

    final Repository-rule-tag-name-patternType  type;
    final  Repository-rule-tag-name-patternParameters? parameters;


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
        return other is Repository-rule-tag-name-pattern
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
