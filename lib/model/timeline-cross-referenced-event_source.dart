import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
class Timeline-cross-referenced-eventSource {
    Timeline-cross-referenced-eventSource(
        {  this.type, this.issue,
         }
    );

    factory Timeline-cross-referenced-eventSource.fromJson(Map<String, dynamic>
        json) {
        return Timeline-cross-referenced-eventSource(
            type: json['type'] as String? ,
            issue: Issue.maybeFromJson(json['issue'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-cross-referenced-eventSource? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-cross-referenced-eventSource.fromJson(json);
    }

    final  String? type;
    final  Issue? issue;


    Map<String, dynamic> toJson() {
        return {
            'type': type,
            'issue': issue?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          issue,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-cross-referenced-eventSource
            && type == other.type
            && issue == other.issue
        ;
    }
}
