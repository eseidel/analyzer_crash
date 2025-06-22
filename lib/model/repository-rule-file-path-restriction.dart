import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-path-restriction.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
import 'package:github/model/repository-rule-file-path-restriction.dart';
import 'package:github/model/repository-rule-file-path-restriction_type.dart';
import 'package:github/model/repository-rule-file-path-restriction_parameters.dart';
@immutable
class Repository-rule-file-path-restriction {
    Repository-rule-file-path-restriction(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-file-path-restriction.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-file-path-restriction(
            type: Repository-rule-file-path-restrictionType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-file-path-restrictionParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-path-restriction? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-path-restriction.fromJson(json);
    }

    final Repository-rule-file-path-restrictionType  type;
    final  Repository-rule-file-path-restrictionParameters? parameters;


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
        return other is Repository-rule-file-path-restriction
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
