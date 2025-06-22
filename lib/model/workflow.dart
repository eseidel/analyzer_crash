import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';
import 'package:github/model/workflow.dart';
import 'package:github/model/workflow_state.dart';

@immutable
class Workflow {
  Workflow({
    required this.id,
    required this.node_id,
    required this.name,
    required this.path,
    required this.state,
    required this.created_at,
    required this.updated_at,
    required this.url,
    required this.html_url,
    required this.badge_url,
    this.deleted_at,
  });

  factory Workflow.fromJson(Map<String, dynamic> json) {
    return Workflow(
      id: (json['id'] as int).toInt(),
      node_id: json['node_id'] as String,
      name: json['name'] as String,
      path: json['path'] as String,
      state: WorkflowState.fromJson(json['state'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String,
      html_url: json['html_url'] as String,
      badge_url: json['badge_url'] as String,
      deleted_at: maybeParseDateTime(json['deleted_at'] as String?),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Workflow? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Workflow.fromJson(json);
  }

  final int id;
  final String node_id;
  final String name;
  final String path;
  final WorkflowState state;
  final DateTime created_at;
  final DateTime updated_at;
  final String url;
  final String html_url;
  final String badge_url;
  final DateTime? deleted_at;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': node_id,
      'name': name,
      'path': path,
      'state': state.toJson(),
      'created_at': created_at.toIso8601String(),
      'updated_at': updated_at.toIso8601String(),
      'url': url,
      'html_url': html_url,
      'badge_url': badge_url,
      'deleted_at': deleted_at?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hash(
    id,
    node_id,
    name,
    path,
    state,
    created_at,
    updated_at,
    url,
    html_url,
    badge_url,
    deleted_at,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Workflow &&
        id == other.id &&
        node_id == other.node_id &&
        name == other.name &&
        path == other.path &&
        state == other.state &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        url == other.url &&
        html_url == other.html_url &&
        badge_url == other.badge_url &&
        deleted_at == other.deleted_at;
  }
}
