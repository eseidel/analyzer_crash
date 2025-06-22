import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/event.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/event_repo.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/event_payload.dart';
import 'package:github/model/issue.dart';
import 'package:github/model/issue_state_reason.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue_labels_inner.dart';
import 'package:github/model/issue_labels_inner.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue_pull_request.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/sub-issues-summary.dart';
import 'package:github/model/issue-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/event_payload_pages_inner.dart';
import 'package:github/model/event.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/event_repo.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/event_payload.dart';
import 'package:github/model/issue.dart';
import 'package:github/model/issue_state_reason.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue_labels_inner.dart';
import 'package:github/model/issue_labels_inner.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue_pull_request.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/sub-issues-summary.dart';
import 'package:github/model/issue-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/event_payload_pages_inner.dart';

@immutable
class Event {
  Event({
    required this.id,
    required this.type,
    required this.actor,
    required this.repo,
    this.org,
    required this.payload,
    required this.public,
    required this.created_at,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as String,
      type: json['type'] as String,
      actor: Actor.fromJson(json['actor'] as Map<String, dynamic>),
      repo: EventRepo.fromJson(json['repo'] as Map<String, dynamic>),
      org: Actor.maybeFromJson(json['org'] as Map<String, dynamic>?),
      payload: EventPayload.fromJson(json['payload'] as Map<String, dynamic>),
      public: (json['public'] as bool),
      created_at: DateTime.parse(json['created_at'] as String),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Event? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Event.fromJson(json);
  }

  final String id;
  final String type;
  final Actor actor;
  final EventRepo repo;
  final Actor? org;
  final EventPayload payload;
  final bool public;
  final DateTime created_at;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'actor': actor.toJson(),
      'repo': repo.toJson(),
      'org': org?.toJson(),
      'payload': payload.toJson(),
      'public': public,
      'created_at': created_at.toIso8601String(),
    };
  }

  @override
  int get hashCode =>
      Object.hash(id, type, actor, repo, org, payload, public, created_at);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Event &&
        id == other.id &&
        type == other.type &&
        actor == other.actor &&
        repo == other.repo &&
        org == other.org &&
        payload == other.payload &&
        public == other.public &&
        created_at == other.created_at;
  }
}
