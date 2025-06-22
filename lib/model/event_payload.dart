import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
class EventPayload {
    EventPayload(
        {  this.action, this.issue, this.comment, this.pages = const [],
         }
    );

    factory EventPayload.fromJson(Map<String, dynamic>
        json) {
        return EventPayload(
            action: json['action'] as String? ,
            issue: Issue.maybeFromJson(json['issue'] as Map<String, dynamic>?) ,
            comment: Issue-comment.maybeFromJson(json['comment'] as Map<String, dynamic>?) ,
            pages: (json['pages'] as List?)?.map<EventPayloadPagesInner>((e) => EventPayloadPagesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static EventPayload? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return EventPayload.fromJson(json);
    }

    final  String? action;
    final  Issue? issue;
    final  Issue-comment? comment;
    final  List<EventPayloadPagesInner>? pages;


    Map<String, dynamic> toJson() {
        return {
            'action': action,
            'issue': issue?.toJson(),
            'comment': comment?.toJson(),
            'pages': pages?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          action,
          issue,
          comment,
          pages,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is EventPayload
            && action == other.action
            && issue == other.issue
            && comment == other.comment
            && listsEqual(pages, other.pages)
        ;
    }
}
