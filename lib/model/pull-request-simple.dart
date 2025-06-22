import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
import 'package:github/model/pull-request-simple.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pull-request-simple_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-simple_links.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/link.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/auto-merge.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/auto-merge_merge_method.dart';
@immutable
class Pull-request-simple {
    Pull-request-simple(
        { required this.url,required this.id,required this.node_id,required this.html_url,required this.diff_url,required this.patch_url,required this.issue_url,required this.commits_url,required this.review_comments_url,required this.review_comment_url,required this.comments_url,required this.statuses_url,required this.number,required this.state,required this.locked,required this.title,required this.user,required this.body, this.labels = const [],required this.milestone, this.active_lock_reason,required this.created_at,required this.updated_at,required this.closed_at,required this.merged_at,required this.merge_commit_sha,required this.assignee, this.assignees = const [], this.requested_reviewers = const [], this.requested_teams = const [],required this.head,required this.base,required this._links,required this.author_association,required this.auto_merge, this.draft,
         }
    );

    factory Pull-request-simple.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-simple(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            html_url: json['html_url'] as String ,
            diff_url: json['diff_url'] as String ,
            patch_url: json['patch_url'] as String ,
            issue_url: json['issue_url'] as String ,
            commits_url: json['commits_url'] as String ,
            review_comments_url: json['review_comments_url'] as String ,
            review_comment_url: json['review_comment_url'] as String ,
            comments_url: json['comments_url'] as String ,
            statuses_url: json['statuses_url'] as String ,
            number: (json['number'] as int).toInt() ,
            state: json['state'] as String ,
            locked: (json['locked'] as bool) ,
            title: json['title'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            body: json['body'] as String ,
            labels: (json['labels'] as List).map<Pull-request-simpleLabelsInner>((e) => Pull-request-simpleLabelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            milestone: Nullable-milestone.fromJson(json['milestone'] as Map<String, dynamic>) ,
            active_lock_reason: json['active_lock_reason'] as String? ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            closed_at: DateTime.parse(json['closed_at'] as String),
            merged_at: DateTime.parse(json['merged_at'] as String),
            merge_commit_sha: json['merge_commit_sha'] as String ,
            assignee: Nullable-simple-user.fromJson(json['assignee'] as Map<String, dynamic>) ,
            assignees: (json['assignees'] as List?)?.map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            requested_reviewers: (json['requested_reviewers'] as List?)?.map<Simple-user>((e) => Simple-user.fromJson(e as Map<String, dynamic>) ).toList() ,
            requested_teams: (json['requested_teams'] as List?)?.map<Team>((e) => Team.fromJson(e as Map<String, dynamic>) ).toList() ,
            head: Pull-request-simpleHead.fromJson(json['head'] as Map<String, dynamic>) ,
            base: Pull-request-simpleBase.fromJson(json['base'] as Map<String, dynamic>) ,
            _links: Pull-request-simpleLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            auto_merge: Auto-merge.fromJson(json['auto_merge'] as Map<String, dynamic>) ,
            draft: (json['draft'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-simple.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  node_id;
    final String  html_url;
    final String  diff_url;
    final String  patch_url;
    final String  issue_url;
    final String  commits_url;
    final String  review_comments_url;
    final String  review_comment_url;
    final String  comments_url;
    final String  statuses_url;
    final int  number;
    final String  state;
    final bool  locked;
    final String  title;
    final Nullable-simple-user  user;
    final String  body;
    final List<Pull-request-simpleLabelsInner>  labels;
    final Nullable-milestone  milestone;
    final  String? active_lock_reason;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  closed_at;
    final DateTime  merged_at;
    final String  merge_commit_sha;
    final Nullable-simple-user  assignee;
    final  List<Simple-user>? assignees;
    final  List<Simple-user>? requested_reviewers;
    final  List<Team>? requested_teams;
    final Pull-request-simpleHead  head;
    final Pull-request-simpleBase  base;
    final Pull-request-simpleLinks  _links;
    final Author-association  author_association;
    final Auto-merge  auto_merge;
    final  bool? draft;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'node_id': node_id,
            'html_url': html_url,
            'diff_url': diff_url,
            'patch_url': patch_url,
            'issue_url': issue_url,
            'commits_url': commits_url,
            'review_comments_url': review_comments_url,
            'review_comment_url': review_comment_url,
            'comments_url': comments_url,
            'statuses_url': statuses_url,
            'number': number,
            'state': state,
            'locked': locked,
            'title': title,
            'user': user.toJson(),
            'body': body,
            'labels': labels.map((e) => e.toJson()).toList(),
            'milestone': milestone.toJson(),
            'active_lock_reason': active_lock_reason,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'closed_at': closed_at.toIso8601String(),
            'merged_at': merged_at.toIso8601String(),
            'merge_commit_sha': merge_commit_sha,
            'assignee': assignee.toJson(),
            'assignees': assignees?.map((e) => e.toJson()).toList(),
            'requested_reviewers': requested_reviewers?.map((e) => e.toJson()).toList(),
            'requested_teams': requested_teams?.map((e) => e.toJson()).toList(),
            'head': head.toJson(),
            'base': base.toJson(),
            '_links': _links.toJson(),
            'author_association': author_association.toJson(),
            'auto_merge': auto_merge.toJson(),
            'draft': draft,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          node_id,
          html_url,
          diff_url,
          patch_url,
          issue_url,
          commits_url,
          review_comments_url,
          review_comment_url,
          comments_url,
          statuses_url,
          number,
          state,
          locked,
          title,
          user,
          body,
          labels,
          milestone,
          active_lock_reason,
          created_at,
          updated_at,
          closed_at,
          merged_at,
          merge_commit_sha,
          assignee,
          assignees,
          requested_reviewers,
          requested_teams,
          head,
          base,
          _links,
          author_association,
          auto_merge,
          draft,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-simple
            && url == other.url
            && id == other.id
            && node_id == other.node_id
            && html_url == other.html_url
            && diff_url == other.diff_url
            && patch_url == other.patch_url
            && issue_url == other.issue_url
            && commits_url == other.commits_url
            && review_comments_url == other.review_comments_url
            && review_comment_url == other.review_comment_url
            && comments_url == other.comments_url
            && statuses_url == other.statuses_url
            && number == other.number
            && state == other.state
            && locked == other.locked
            && title == other.title
            && user == other.user
            && body == other.body
            && listsEqual(labels, other.labels)
            && milestone == other.milestone
            && active_lock_reason == other.active_lock_reason
            && created_at == other.created_at
            && updated_at == other.updated_at
            && closed_at == other.closed_at
            && merged_at == other.merged_at
            && merge_commit_sha == other.merge_commit_sha
            && assignee == other.assignee
            && listsEqual(assignees, other.assignees)
            && listsEqual(requested_reviewers, other.requested_reviewers)
            && listsEqual(requested_teams, other.requested_teams)
            && head == other.head
            && base == other.base
            && _links == other._links
            && author_association == other.author_association
            && auto_merge == other.auto_merge
            && draft == other.draft
        ;
    }
}
