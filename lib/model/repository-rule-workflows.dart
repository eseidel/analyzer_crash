import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-workflows.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-workflows.dart';
import 'package:github/model/repository-rule-workflows_type.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
@immutable
class Repository-rule-workflows {
    Repository-rule-workflows(
        { required this.type, this.parameters,
         }
    );

    factory Repository-rule-workflows.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-workflows(
            type: Repository-rule-workflowsType.fromJson(json['type'] as String) ,
            parameters: Repository-rule-workflowsParameters.maybeFromJson(json['parameters'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-workflows? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-workflows.fromJson(json);
    }

    final Repository-rule-workflowsType  type;
    final  Repository-rule-workflowsParameters? parameters;


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
        return other is Repository-rule-workflows
            && type == other.type
            && parameters == other.parameters
        ;
    }
}
