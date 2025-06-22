import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
import 'package:github/model/repository-rule-workflows_parameters.dart';
import 'package:github/model/repository-rule-params-workflow-file-reference.dart';
@immutable
class Repository-rule-workflowsParameters {
    Repository-rule-workflowsParameters(
        {  this.do_not_enforce_on_create, this.workflows = const [],
         }
    );

    factory Repository-rule-workflowsParameters.fromJson(Map<String, dynamic>
        json) {
        return Repository-rule-workflowsParameters(
            do_not_enforce_on_create: (json['do_not_enforce_on_create'] as bool?) ,
            workflows: (json['workflows'] as List).map<Repository-rule-params-workflow-file-reference>((e) => Repository-rule-params-workflow-file-reference.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-rule-workflowsParameters? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-rule-workflowsParameters.fromJson(json);
    }

    final  bool? do_not_enforce_on_create;
    final List<Repository-rule-params-workflow-file-reference>  workflows;


    Map<String, dynamic> toJson() {
        return {
            'do_not_enforce_on_create': do_not_enforce_on_create,
            'workflows': workflows.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          do_not_enforce_on_create,
          workflows,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-rule-workflowsParameters
            && do_not_enforce_on_create == other.do_not_enforce_on_create
            && listsEqual(workflows, other.workflows)
        ;
    }
}
