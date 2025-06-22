import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';
import 'package:github/model/artifact.dart';
import 'package:github/model/artifact_workflow_run.dart';

@immutable
class Artifact {
  Artifact({
    required this.id,
    required this.node_id,
    required this.name,
    required this.size_in_bytes,
    required this.url,
    required this.archive_download_url,
    required this.expired,
    required this.created_at,
    required this.expires_at,
    required this.updated_at,
    this.digest,
    this.workflow_run,
  });

  factory Artifact.fromJson(Map<String, dynamic> json) {
    return Artifact(
      id: (json['id'] as int).toInt(),
      node_id: json['node_id'] as String,
      name: json['name'] as String,
      size_in_bytes: (json['size_in_bytes'] as int).toInt(),
      url: json['url'] as String,
      archive_download_url: json['archive_download_url'] as String,
      expired: (json['expired'] as bool),
      created_at: DateTime.parse(json['created_at'] as String),
      expires_at: DateTime.parse(json['expires_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      digest: json['digest'] as String?,
      workflow_run: ArtifactWorkflowRun.maybeFromJson(
        json['workflow_run'] as Map<String, dynamic>?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Artifact? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Artifact.fromJson(json);
  }

  final int id;
  final String node_id;
  final String name;
  final int size_in_bytes;
  final String url;
  final String archive_download_url;
  final bool expired;
  final DateTime created_at;
  final DateTime expires_at;
  final DateTime updated_at;
  final String? digest;
  final ArtifactWorkflowRun? workflow_run;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': node_id,
      'name': name,
      'size_in_bytes': size_in_bytes,
      'url': url,
      'archive_download_url': archive_download_url,
      'expired': expired,
      'created_at': created_at.toIso8601String(),
      'expires_at': expires_at.toIso8601String(),
      'updated_at': updated_at.toIso8601String(),
      'digest': digest,
      'workflow_run': workflow_run?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hash(
    id,
    node_id,
    name,
    size_in_bytes,
    url,
    archive_download_url,
    expired,
    created_at,
    expires_at,
    updated_at,
    digest,
    workflow_run,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Artifact &&
        id == other.id &&
        node_id == other.node_id &&
        name == other.name &&
        size_in_bytes == other.size_in_bytes &&
        url == other.url &&
        archive_download_url == other.archive_download_url &&
        expired == other.expired &&
        created_at == other.created_at &&
        expires_at == other.expires_at &&
        updated_at == other.updated_at &&
        digest == other.digest &&
        workflow_run == other.workflow_run;
  }
}
