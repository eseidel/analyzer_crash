import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
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
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request.dart';
import 'package:github/model/pull-request_state.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_labels_inner.dart';
import 'package:github/model/nullable-milestone.dart';
import 'package:github/model/nullable-milestone_state.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/pull-request_head.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_base.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/pull-request_links.dart';
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
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Pull-request {
    Pull-request(
        { required this.url,required this.id,required this.node_id,required this.html_url,required this.diff_url,required this.patch_url,required this.issue_url,required this.commits_url,required this.review_comments_url,required this.review_comment_url,required this.comments_url,required this.statuses_url,required this.number,required this.state,required this.locked,required this.title,required this.user,required this.body, this.labels = const [],required this.milestone, this.active_lock_reason,required this.created_at,required this.updated_at,required this.closed_at,required this.merged_at,required this.merge_commit_sha,required this.assignee, this.assignees = const [], this.requested_reviewers = const [], this.requested_teams = const [],required this.head,required this.base,required this._links,required this.author_association,required this.auto_merge, this.draft,required this.merged,required this.mergeable, this.rebaseable,required this.mergeable_state,required this.merged_by,required this.comments,required this.review_comments,required this.maintainer_can_modify,required this.commits,required this.additions,required this.deletions,required this.changed_files,
         }
    );

    factory Pull-request.fromJson(Map<String, dynamic>
        json) {
        return Pull-request(
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
            state: Pull-requestState.fromJson(json['state'] as String) ,
            locked: (json['locked'] as bool) ,
            title: json['title'] as String ,
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            body: json['body'] as String ,
            labels: (json['labels'] as List).map<Pull-requestLabelsInner>((e) => Pull-requestLabelsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
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
            requested_teams: (json['requested_teams'] as List?)?.map<Team-simple>((e) => Team-simple.fromJson(e as Map<String, dynamic>) ).toList() ,
            head: Pull-requestHead.fromJson(json['head'] as Map<String, dynamic>) ,
            base: Pull-requestBase.fromJson(json['base'] as Map<String, dynamic>) ,
            _links: Pull-requestLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            auto_merge: Auto-merge.fromJson(json['auto_merge'] as Map<String, dynamic>) ,
            draft: (json['draft'] as bool?) ,
            merged: (json['merged'] as bool) ,
            mergeable: (json['mergeable'] as bool) ,
            rebaseable: (json['rebaseable'] as bool?) ,
            mergeable_state: json['mergeable_state'] as String ,
            merged_by: Nullable-simple-user.fromJson(json['merged_by'] as Map<String, dynamic>) ,
            comments: (json['comments'] as int).toInt() ,
            review_comments: (json['review_comments'] as int).toInt() ,
            maintainer_can_modify: (json['maintainer_can_modify'] as bool) ,
            commits: (json['commits'] as int).toInt() ,
            additions: (json['additions'] as int).toInt() ,
            deletions: (json['deletions'] as int).toInt() ,
            changed_files: (json['changed_files'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request.fromJson(json);
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
    final Pull-requestState  state;
    final bool  locked;
    final String  title;
    final Simple-user  user;
    final String  body;
    final List<Pull-requestLabelsInner>  labels;
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
    final  List<Team-simple>? requested_teams;
    final Pull-requestHead  head;
    final Pull-requestBase  base;
    final Pull-requestLinks  _links;
    final Author-association  author_association;
    final Auto-merge  auto_merge;
    final  bool? draft;
    final bool  merged;
    final bool  mergeable;
    final  bool? rebaseable;
    final String  mergeable_state;
    final Nullable-simple-user  merged_by;
    final int  comments;
    final int  review_comments;
    final bool  maintainer_can_modify;
    final int  commits;
    final int  additions;
    final int  deletions;
    final int  changed_files;


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
            'state': state.toJson(),
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
            'merged': merged,
            'mergeable': mergeable,
            'rebaseable': rebaseable,
            'mergeable_state': mergeable_state,
            'merged_by': merged_by.toJson(),
            'comments': comments,
            'review_comments': review_comments,
            'maintainer_can_modify': maintainer_can_modify,
            'commits': commits,
            'additions': additions,
            'deletions': deletions,
            'changed_files': changed_files,
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
          merged,
          mergeable,
          rebaseable,
          mergeable_state,
          merged_by,
          comments,
          review_comments,
          maintainer_can_modify,
          commits,
          additions,
          deletions,
          changed_files,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request
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
            && merged == other.merged
            && mergeable == other.mergeable
            && rebaseable == other.rebaseable
            && mergeable_state == other.mergeable_state
            && merged_by == other.merged_by
            && comments == other.comments
            && review_comments == other.review_comments
            && maintainer_can_modify == other.maintainer_can_modify
            && commits == other.commits
            && additions == other.additions
            && deletions == other.deletions
            && changed_files == other.changed_files
        ;
    }
}
