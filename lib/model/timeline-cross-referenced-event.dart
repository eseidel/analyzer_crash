import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-cross-referenced-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/timeline-cross-referenced-event_source.dart';
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
import 'package:github/model/timeline-cross-referenced-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/timeline-cross-referenced-event_source.dart';
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
@immutable
class Timeline-cross-referenced-event {
    Timeline-cross-referenced-event(
        { required this.event, this.actor,required this.created_at,required this.updated_at,required this.source,
         }
    );

    factory Timeline-cross-referenced-event.fromJson(Map<String, dynamic>
        json) {
        return Timeline-cross-referenced-event(
            event: json['event'] as String ,
            actor: Simple-user.maybeFromJson(json['actor'] as Map<String, dynamic>?) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            source: Timeline-cross-referenced-eventSource.fromJson(json['source'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-cross-referenced-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-cross-referenced-event.fromJson(json);
    }

    final String  event;
    final  Simple-user? actor;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Timeline-cross-referenced-eventSource  source;


    Map<String, dynamic> toJson() {
        return {
            'event': event,
            'actor': actor?.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'source': source.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event,
          actor,
          created_at,
          updated_at,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-cross-referenced-event
            && event == other.event
            && actor == other.actor
            && created_at == other.created_at
            && updated_at == other.updated_at
            && source == other.source
        ;
    }
}
