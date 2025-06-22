import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Nullable-issue {
    Nullable-issue(
        { required this.id,required this.node_id,required this.url,required this.repository_url,required this.labels_url,required this.comments_url,required this.events_url,required this.html_url,required this.number,required this.state, this.state_reason,required this.title, this.body,required this.user, this.labels = const [],required this.assignee, this.assignees = const [],required this.milestone,required this.locked, this.active_lock_reason,required this.comments, this.pull_request,required this.closed_at,required this.created_at,required this.updated_at, this.draft, this.closed_by, this.body_html, this.body_text, this.timeline_url, this.type, this.repository, this.performed_via_github_app,required this.author_association, this.reactions, this.sub_issues_summary,
         }
    );

    factory Nullable-issue.fromJson(Map<String, dynamic>
        json) {
        return Nullable-issue(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            repository_url: json['repository_url'] as String ,
            labels_url: json['labels_url'] as String ,
            comments_url: json['comments_url'] as String ,
            events_url: json['events_url'] as String ,
            html_url: json['html_url'] as String ,
            number: (json['number'] as int).toInt() ,
            state: json['state'] as String ,
            state_reason: Nullable-issueStateReason.maybeFromJson(json['state_reason'] as String?) ,
            title: json['title'] as String ,
            body: json['body'] as String? ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            labels: (json['labels'] as List).map<Nullable-issueLabelsInner>((e) => Nullable-issueLabelsInner.fromJson(e as dynamic)).toList() ,
            assignee: Nullable-simple-user.fromJson(json['assignee'] as Map<String, dynamic>) ,
            assignees: (json['assignees'] as List?)?.map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            milestone: Nullable-milestone.fromJson(json['milestone'] as Map<String, dynamic>) ,
            locked: (json['locked'] as bool) ,
            active_lock_reason: json['active_lock_reason'] as String? ,
            comments: (json['comments'] as int).toInt() ,
            pull_request: Nullable-issuePullRequest.maybeFromJson(json['pull_request'] as Map<String, dynamic>?) ,
            closed_at: DateTime.parse(json['closed_at'] as String),
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            draft: (json['draft'] as bool?) ,
            closed_by: Nullable-simple-user.maybeFromJson(json['closed_by'] as Map<String, dynamic>?) ,
            body_html: json['body_html'] as String? ,
            body_text: json['body_text'] as String? ,
            timeline_url: json['timeline_url'] as String? ,
            type: Issue-type.maybeFromJson(json['type'] as Map<String, dynamic>?) ,
            repository: Repository.maybeFromJson(json['repository'] as Map<String, dynamic>?) ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
            sub_issues_summary: Sub-issues-summary.maybeFromJson(json['sub_issues_summary'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-issue? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-issue.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final String  repository_url;
    final String  labels_url;
    final String  comments_url;
    final String  events_url;
    final String  html_url;
    final int  number;
    final String  state;
    final  Nullable-issueStateReason? state_reason;
    final String  title;
    final  String? body;
    final Nullable-simple-user  user;
    final List<Nullable-issueLabelsInner>  labels;
    final Nullable-simple-user  assignee;
    final  List<Simple-user>? assignees;
    final Nullable-milestone  milestone;
    final bool  locked;
    final  String? active_lock_reason;
    final int  comments;
    final  Nullable-issuePullRequest? pull_request;
    final DateTime  closed_at;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  bool? draft;
    final  Nullable-simple-user? closed_by;
    final  String? body_html;
    final  String? body_text;
    final  String? timeline_url;
    final  Issue-type? type;
    final  Repository? repository;
    final  Nullable-integration? performed_via_github_app;
    final Author-association  author_association;
    final  Reaction-rollup? reactions;
    final  Sub-issues-summary? sub_issues_summary;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'repository_url': repository_url,
            'labels_url': labels_url,
            'comments_url': comments_url,
            'events_url': events_url,
            'html_url': html_url,
            'number': number,
            'state': state,
            'state_reason': state_reason?.toJson(),
            'title': title,
            'body': body,
            'user': user.toJson(),
            'labels': labels.map((e) => e.toJson()).toList(),
            'assignee': assignee.toJson(),
            'assignees': assignees?.map((e) => e.toJson()).toList(),
            'milestone': milestone.toJson(),
            'locked': locked,
            'active_lock_reason': active_lock_reason,
            'comments': comments,
            'pull_request': pull_request?.toJson(),
            'closed_at': closed_at.toIso8601String(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'draft': draft,
            'closed_by': closed_by?.toJson(),
            'body_html': body_html,
            'body_text': body_text,
            'timeline_url': timeline_url,
            'type': type?.toJson(),
            'repository': repository?.toJson(),
            'performed_via_github_app': performed_via_github_app?.toJson(),
            'author_association': author_association.toJson(),
            'reactions': reactions?.toJson(),
            'sub_issues_summary': sub_issues_summary?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          repository_url,
          labels_url,
          comments_url,
          events_url,
          html_url,
          number,
          state,
          state_reason,
          title,
          body,
          user,
          labels,
          assignee,
          assignees,
          milestone,
          locked,
          active_lock_reason,
          comments,
          pull_request,
          closed_at,
          created_at,
          updated_at,
          draft,
          closed_by,
          body_html,
          body_text,
          timeline_url,
          type,
          repository,
          performed_via_github_app,
          author_association,
          reactions,
          sub_issues_summary,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-issue
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && repository_url == other.repository_url
            && labels_url == other.labels_url
            && comments_url == other.comments_url
            && events_url == other.events_url
            && html_url == other.html_url
            && number == other.number
            && state == other.state
            && state_reason == other.state_reason
            && title == other.title
            && body == other.body
            && user == other.user
            && listsEqual(labels, other.labels)
            && assignee == other.assignee
            && listsEqual(assignees, other.assignees)
            && milestone == other.milestone
            && locked == other.locked
            && active_lock_reason == other.active_lock_reason
            && comments == other.comments
            && pull_request == other.pull_request
            && closed_at == other.closed_at
            && created_at == other.created_at
            && updated_at == other.updated_at
            && draft == other.draft
            && closed_by == other.closed_by
            && body_html == other.body_html
            && body_text == other.body_text
            && timeline_url == other.timeline_url
            && type == other.type
            && repository == other.repository
            && performed_via_github_app == other.performed_via_github_app
            && author_association == other.author_association
            && reactions == other.reactions
            && sub_issues_summary == other.sub_issues_summary
        ;
    }
}
