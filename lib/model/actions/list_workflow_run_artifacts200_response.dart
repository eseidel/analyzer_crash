import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/list_workflow_run_artifacts200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/actions/list_workflow_run_artifacts200_response.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
@immutable
class Actions&#x2F;listWorkflowRunArtifacts200Response {
    Actions&#x2F;listWorkflowRunArtifacts200Response(
        { required this.total_count, this.artifacts = const [],
         }
    );

    factory Actions&#x2F;listWorkflowRunArtifacts200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;listWorkflowRunArtifacts200Response(
            total_count: (json['total_count'] as int).toInt() ,
            artifacts: (json['artifacts'] as List).map<Artifact>((e) => Artifact.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;listWorkflowRunArtifacts200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;listWorkflowRunArtifacts200Response.fromJson(json);
    }

    final int  total_count;
    final List<Artifact>  artifacts;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'artifacts': artifacts.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          artifacts,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;listWorkflowRunArtifacts200Response
            && total_count == other.total_count
            && listsEqual(artifacts, other.artifacts)
        ;
    }
}
