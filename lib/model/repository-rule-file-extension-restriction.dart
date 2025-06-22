import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-file-extension-restriction.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
import 'package:github/model/repository-rule-file-extension-restriction.dart';
import 'package:github/model/repository-rule-file-extension-restriction_type.dart';
import 'package:github/model/repository-rule-file-extension-restriction_parameters.dart';
@immutable
class Repository-rule-file-extension-restriction {
    Repository-rule-file-extension-restriction(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-file-extension-restriction.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-file-extension-restriction(
            type: Repository-rule-file-extension-restrictionType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-file-extension-restrictionParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-file-extension-restriction? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-file-extension-restriction.fromJson(json);
    }

    final Repository-rule-file-extension-restrictionType  type;
    final  Repository-rule-file-extension-restrictionParameters? parameters;


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
        return other is Repository-rule-file-extension-restriction
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
