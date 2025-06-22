import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-event.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue.dart';
import 'package:github/model/nullable-issue_state_reason.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue_pull_request.dart';
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
import 'package:github/model/issue-event-label.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/issue-event-dismissed-review.dart';
import 'package:github/model/issue-event-milestone.dart';
import 'package:github/model/issue-event-project-card.dart';
import 'package:github/model/issue-event-rename.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/issue-event.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue.dart';
import 'package:github/model/nullable-issue_state_reason.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
import 'package:github/model/nullable-issue_labels_inner.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-issue_pull_request.dart';
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
import 'package:github/model/issue-event-label.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/issue-event-dismissed-review.dart';
import 'package:github/model/issue-event-milestone.dart';
import 'package:github/model/issue-event-project-card.dart';
import 'package:github/model/issue-event-rename.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
@immutable
class Issue-event {
    Issue-event(
        { required this.id,required this.node_id,required this.url,required this.actor,required this.event,required this.commit_id,required this.commit_url,required this.created_at, this.issue, this.label, this.assignee, this.assigner, this.review_requester, this.requested_reviewer, this.requested_team, this.dismissed_review, this.milestone, this.project_card, this.rename, this.author_association, this.lock_reason, this.performed_via_github_app,
         }
    );

    factory Issue-event.fromJson(Map<String, dynamic>
        json) {
        return Issue-event(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            actor: Nullable-simple-user.fromJson(json['actor'] as Map<String, dynamic>) ,
            event: json['event'] as String ,
            commit_id: json['commit_id'] as String ,
            commit_url: json['commit_url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            issue: Nullable-issue.maybeFromJson(json['issue'] as Map<String, dynamic>?) ,
            label: Issue-event-label.maybeFromJson(json['label'] as Map<String, dynamic>?) ,
            assignee: Nullable-simple-user.maybeFromJson(json['assignee'] as Map<String, dynamic>?) ,
            assigner: Nullable-simple-user.maybeFromJson(json['assigner'] as Map<String, dynamic>?) ,
            review_requester: Nullable-simple-user.maybeFromJson(json['review_requester'] as Map<String, dynamic>?) ,
            requested_reviewer: Nullable-simple-user.maybeFromJson(json['requested_reviewer'] as Map<String, dynamic>?) ,
            requested_team: Team.maybeFromJson(json['requested_team'] as Map<String, dynamic>?) ,
            dismissed_review: Issue-event-dismissed-review.maybeFromJson(json['dismissed_review'] as Map<String, dynamic>?) ,
            milestone: Issue-event-milestone.maybeFromJson(json['milestone'] as Map<String, dynamic>?) ,
            project_card: Issue-event-project-card.maybeFromJson(json['project_card'] as Map<String, dynamic>?) ,
            rename: Issue-event-rename.maybeFromJson(json['rename'] as Map<String, dynamic>?) ,
            author_association: Author-association.maybeFromJson(json['author_association'] as String?) ,
            lock_reason: json['lock_reason'] as String? ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-event.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final Nullable-simple-user  actor;
    final String  event;
    final String  commit_id;
    final String  commit_url;
    final DateTime  created_at;
    final  Nullable-issue? issue;
    final  Issue-event-label? label;
    final  Nullable-simple-user? assignee;
    final  Nullable-simple-user? assigner;
    final  Nullable-simple-user? review_requester;
    final  Nullable-simple-user? requested_reviewer;
    final  Team? requested_team;
    final  Issue-event-dismissed-review? dismissed_review;
    final  Issue-event-milestone? milestone;
    final  Issue-event-project-card? project_card;
    final  Issue-event-rename? rename;
    final  Author-association? author_association;
    final  String? lock_reason;
    final  Nullable-integration? performed_via_github_app;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'actor': actor.toJson(),
            'event': event,
            'commit_id': commit_id,
            'commit_url': commit_url,
            'created_at': created_at.toIso8601String(),
            'issue': issue?.toJson(),
            'label': label?.toJson(),
            'assignee': assignee?.toJson(),
            'assigner': assigner?.toJson(),
            'review_requester': review_requester?.toJson(),
            'requested_reviewer': requested_reviewer?.toJson(),
            'requested_team': requested_team?.toJson(),
            'dismissed_review': dismissed_review?.toJson(),
            'milestone': milestone?.toJson(),
            'project_card': project_card?.toJson(),
            'rename': rename?.toJson(),
            'author_association': author_association?.toJson(),
            'lock_reason': lock_reason,
            'performed_via_github_app': performed_via_github_app?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          actor,
          event,
          commit_id,
          commit_url,
          created_at,
          issue,
          label,
          assignee,
          assigner,
          review_requester,
          requested_reviewer,
          requested_team,
          dismissed_review,
          milestone,
          project_card,
          rename,
          author_association,
          lock_reason,
          performed_via_github_app,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-event
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && actor == other.actor
            && event == other.event
            && commit_id == other.commit_id
            && commit_url == other.commit_url
            && created_at == other.created_at
            && issue == other.issue
            && label == other.label
            && assignee == other.assignee
            && assigner == other.assigner
            && review_requester == other.review_requester
            && requested_reviewer == other.requested_reviewer
            && requested_team == other.requested_team
            && dismissed_review == other.dismissed_review
            && milestone == other.milestone
            && project_card == other.project_card
            && rename == other.rename
            && author_association == other.author_association
            && lock_reason == other.lock_reason
            && performed_via_github_app == other.performed_via_github_app
        ;
    }
}
