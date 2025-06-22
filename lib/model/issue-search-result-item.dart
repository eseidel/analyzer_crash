import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/issue-search-result-item.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/issue-search-result-item.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/issue-search-result-item_labels_inner.dart';
import 'package:github/model/issue-search-result-item_sub_issues_summary.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/search-result-text-matches_inner.dart';
import 'package:github/model/search-result-text-matches_inner_matches_inner.dart';
import 'package:github/model/issue-search-result-item_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/issue-type.dart';
import 'package:github/model/issue-type_color.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Issue-search-result-item {
    Issue-search-result-item(
        { required this.url,required this.repository_url,required this.labels_url,required this.comments_url,required this.events_url,required this.html_url,required this.id,required this.node_id,required this.number,required this.title,required this.locked, this.active_lock_reason, this.assignees = const [],required this.user, this.labels = const [], this.sub_issues_summary,required this.state, this.state_reason,required this.assignee,required this.milestone,required this.comments,required this.created_at,required this.updated_at,required this.closed_at, this.text_matches = const [], this.pull_request, this.body,required this.score,required this.author_association, this.draft, this.repository, this.body_html, this.body_text, this.timeline_url, this.type, this.performed_via_github_app, this.reactions,
         }
    );

    factory Issue-search-result-item.fromJson(Map<String, dynamic>
        json) {
        return Issue-search-result-item(
            url: json['url'] as String ,
            repository_url: json['repository_url'] as String ,
            labels_url: json['labels_url'] as String ,
            comments_url: json['comments_url'] as String ,
            events_url: json['events_url'] as String ,
            html_url: json['html_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            number: (json['number'] as int).toInt() ,
            title: json['title'] as String ,
            locked: (json['locked'] as bool) ,
            active_lock_reason: json['active_lock_reason'] as String? ,
            assignees: (json['assignees'] as List?)?.map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            labels: (json['labels'] as List).map<Issue-search-result-itemLabelsInner>((e) => Issue-search-result-itemLabelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            sub_issues_summary: Issue-search-result-itemSubIssuesSummary.maybeFromJson(json['sub_issues_summary'] as Map<String, dynamic>?) ,
            state: json['state'] as String ,
            state_reason: json['state_reason'] as String? ,
            assignee: Nullable-simple-user.fromJson(json['assignee'] as Map<String, dynamic>) ,
            milestone: Nullable-milestone.fromJson(json['milestone'] as Map<String, dynamic>) ,
            comments: (json['comments'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            closed_at: DateTime.parse(json['closed_at'] as String),
            text_matches: (json['text_matches'] as List?)?.map<Search-result-text-matchesInner>((e) => Search-result-text-matchesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            pull_request: Issue-search-result-itemPullRequest.maybeFromJson(json['pull_request'] as Map<String, dynamic>?) ,
            body: json['body'] as String? ,
            score: (json['score'] as num).toDouble() ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            draft: (json['draft'] as bool?) ,
            repository: Repository.maybeFromJson(json['repository'] as Map<String, dynamic>?) ,
            body_html: json['body_html'] as String? ,
            body_text: json['body_text'] as String? ,
            timeline_url: json['timeline_url'] as String? ,
            type: Issue-type.maybeFromJson(json['type'] as Map<String, dynamic>?) ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Issue-search-result-item? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Issue-search-result-item.fromJson(json);
    }

    final String  url;
    final String  repository_url;
    final String  labels_url;
    final String  comments_url;
    final String  events_url;
    final String  html_url;
    final int  id;
    final String  node_id;
    final int  number;
    final String  title;
    final bool  locked;
    final  String? active_lock_reason;
    final  List<Simple-user>? assignees;
    final Nullable-simple-user  user;
    final List<Issue-search-result-itemLabelsInner>  labels;
    final  Issue-search-result-itemSubIssuesSummary? sub_issues_summary;
    final String  state;
    final  String? state_reason;
    final Nullable-simple-user  assignee;
    final Nullable-milestone  milestone;
    final int  comments;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  closed_at;
    final  List<Search-result-text-matchesInner>? text_matches;
    final  Issue-search-result-itemPullRequest? pull_request;
    final  String? body;
    final double  score;
    final Author-association  author_association;
    final  bool? draft;
    final  Repository? repository;
    final  String? body_html;
    final  String? body_text;
    final  String? timeline_url;
    final  Issue-type? type;
    final  Nullable-integration? performed_via_github_app;
    final  Reaction-rollup? reactions;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'repository_url': repository_url,
            'labels_url': labels_url,
            'comments_url': comments_url,
            'events_url': events_url,
            'html_url': html_url,
            'id': id,
            'node_id': node_id,
            'number': number,
            'title': title,
            'locked': locked,
            'active_lock_reason': active_lock_reason,
            'assignees': assignees?.map((e) => e.toJson()).toList(),
            'user': user.toJson(),
            'labels': labels.map((e) => e.toJson()).toList(),
            'sub_issues_summary': sub_issues_summary?.toJson(),
            'state': state,
            'state_reason': state_reason,
            'assignee': assignee.toJson(),
            'milestone': milestone.toJson(),
            'comments': comments,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'closed_at': closed_at.toIso8601String(),
            'text_matches': text_matches?.map((e) => e.toJson()).toList(),
            'pull_request': pull_request?.toJson(),
            'body': body,
            'score': score,
            'author_association': author_association.toJson(),
            'draft': draft,
            'repository': repository?.toJson(),
            'body_html': body_html,
            'body_text': body_text,
            'timeline_url': timeline_url,
            'type': type?.toJson(),
            'performed_via_github_app': performed_via_github_app?.toJson(),
            'reactions': reactions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          repository_url,
          labels_url,
          comments_url,
          events_url,
          html_url,
          id,
          node_id,
          number,
          title,
          locked,
          active_lock_reason,
          assignees,
          user,
          labels,
          sub_issues_summary,
          state,
          state_reason,
          assignee,
          milestone,
          comments,
          created_at,
          updated_at,
          closed_at,
          text_matches,
          pull_request,
          body,
          score,
          author_association,
          draft,
          repository,
          body_html,
          body_text,
          timeline_url,
          type,
          performed_via_github_app,
          reactions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Issue-search-result-item
            && url == other.url
            && repository_url == other.repository_url
            && labels_url == other.labels_url
            && comments_url == other.comments_url
            && events_url == other.events_url
            && html_url == other.html_url
            && id == other.id
            && node_id == other.node_id
            && number == other.number
            && title == other.title
            && locked == other.locked
            && active_lock_reason == other.active_lock_reason
            && listsEqual(assignees, other.assignees)
            && user == other.user
            && listsEqual(labels, other.labels)
            && sub_issues_summary == other.sub_issues_summary
            && state == other.state
            && state_reason == other.state_reason
            && assignee == other.assignee
            && milestone == other.milestone
            && comments == other.comments
            && created_at == other.created_at
            && updated_at == other.updated_at
            && closed_at == other.closed_at
            && listsEqual(text_matches, other.text_matches)
            && pull_request == other.pull_request
            && body == other.body
            && score == other.score
            && author_association == other.author_association
            && draft == other.draft
            && repository == other.repository
            && body_html == other.body_html
            && body_text == other.body_text
            && timeline_url == other.timeline_url
            && type == other.type
            && performed_via_github_app == other.performed_via_github_app
            && reactions == other.reactions
        ;
    }
}
