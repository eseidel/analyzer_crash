import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/artifact_workflow_run.dart';

@immutable
class ArtifactWorkflowRun {
  ArtifactWorkflowRun({
    this.id,
    this.repository_id,
    this.head_repository_id,
    this.head_branch,
    this.head_sha,
  });

  factory ArtifactWorkflowRun.fromJson(Map<String, dynamic> json) {
    return ArtifactWorkflowRun(
      id: (json['id'] as int?).toInt(),
      repository_id: (json['repository_id'] as int?).toInt(),
      head_repository_id: (json['head_repository_id'] as int?).toInt(),
      head_branch: json['head_branch'] as String?,
      head_sha: json['head_sha'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ArtifactWorkflowRun? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return ArtifactWorkflowRun.fromJson(json);
  }

  final int? id;
  final int? repository_id;
  final int? head_repository_id;
  final String? head_branch;
  final String? head_sha;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'repository_id': repository_id,
      'head_repository_id': head_repository_id,
      'head_branch': head_branch,
      'head_sha': head_sha,
    };
  }

  @override
  int get hashCode =>
      Object.hash(id, repository_id, head_repository_id, head_branch, head_sha);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ArtifactWorkflowRun &&
        id == other.id &&
        repository_id == other.repository_id &&
        head_repository_id == other.head_repository_id &&
        head_branch == other.head_branch &&
        head_sha == other.head_sha;
  }
}
