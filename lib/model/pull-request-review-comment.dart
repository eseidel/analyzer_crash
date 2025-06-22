import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/pull-request-review-comment.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review-comment_links.dart';
import 'package:github/model/pull-request-review-comment_links_self.dart';
import 'package:github/model/pull-request-review-comment_links_html.dart';
import 'package:github/model/pull-request-review-comment_links_pull_request.dart';
import 'package:github/model/pull-request-review-comment_start_side.dart';
import 'package:github/model/pull-request-review-comment_side.dart';
import 'package:github/model/pull-request-review-comment_subject_type.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Pull-request-review-comment {
    Pull-request-review-comment(
        { required this.url,required this.pull_request_review_id,required this.id,required this.node_id,required this.diff_hunk,required this.path, this.position, this.original_position,required this.commit_id,required this.original_commit_id, this.in_reply_to_id,required this.user,required this.body,required this.created_at,required this.updated_at,required this.html_url,required this.pull_request_url,required this.author_association,required this._links, this.start_line, this.original_start_line, this.start_side = Pull-request-review-commentStartSide.right, this.line, this.original_line, this.side = Pull-request-review-commentSide.right, this.subject_type, this.reactions, this.body_html, this.body_text,
         }
    );

    factory Pull-request-review-comment.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-review-comment(
            url: json['url'] as String ,
            pull_request_review_id: (json['pull_request_review_id'] as int).toInt() ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            diff_hunk: json['diff_hunk'] as String ,
            path: json['path'] as String ,
            position: (json['position'] as int?).toInt() ,
            original_position: (json['original_position'] as int?).toInt() ,
            commit_id: json['commit_id'] as String ,
            original_commit_id: json['original_commit_id'] as String ,
            in_reply_to_id: (json['in_reply_to_id'] as int?).toInt() ,
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            body: json['body'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            html_url: json['html_url'] as String ,
            pull_request_url: json['pull_request_url'] as String ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            _links: Pull-request-review-commentLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            start_line: (json['start_line'] as int?).toInt() ,
            original_start_line: (json['original_start_line'] as int?).toInt() ,
            start_side: Pull-request-review-commentStartSide.maybeFromJson(json['start_side'] as String?) ,
            line: (json['line'] as int?).toInt() ,
            original_line: (json['original_line'] as int?).toInt() ,
            side: Pull-request-review-commentSide.maybeFromJson(json['side'] as String?) ,
            subject_type: Pull-request-review-commentSubjectType.maybeFromJson(json['subject_type'] as String?) ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
            body_html: json['body_html'] as String? ,
            body_text: json['body_text'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review-comment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review-comment.fromJson(json);
    }

    final String  url;
    final int  pull_request_review_id;
    final int  id;
    final String  node_id;
    final String  diff_hunk;
    final String  path;
    final  int? position;
    final  int? original_position;
    final String  commit_id;
    final String  original_commit_id;
    final  int? in_reply_to_id;
    final Simple-user  user;
    final String  body;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  html_url;
    final String  pull_request_url;
    final Author-association  author_association;
    final Pull-request-review-commentLinks  _links;
    final  int? start_line;
    final  int? original_start_line;
    final  Pull-request-review-commentStartSide? start_side;
    final  int? line;
    final  int? original_line;
    final  Pull-request-review-commentSide? side;
    final  Pull-request-review-commentSubjectType? subject_type;
    final  Reaction-rollup? reactions;
    final  String? body_html;
    final  String? body_text;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'pull_request_review_id': pull_request_review_id,
            'id': id,
            'node_id': node_id,
            'diff_hunk': diff_hunk,
            'path': path,
            'position': position,
            'original_position': original_position,
            'commit_id': commit_id,
            'original_commit_id': original_commit_id,
            'in_reply_to_id': in_reply_to_id,
            'user': user.toJson(),
            'body': body,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'html_url': html_url,
            'pull_request_url': pull_request_url,
            'author_association': author_association.toJson(),
            '_links': _links.toJson(),
            'start_line': start_line,
            'original_start_line': original_start_line,
            'start_side': start_side?.toJson(),
            'line': line,
            'original_line': original_line,
            'side': side?.toJson(),
            'subject_type': subject_type?.toJson(),
            'reactions': reactions?.toJson(),
            'body_html': body_html,
            'body_text': body_text,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          pull_request_review_id,
          id,
          node_id,
          diff_hunk,
          path,
          position,
          original_position,
          commit_id,
          original_commit_id,
          in_reply_to_id,
          user,
          body,
          created_at,
          updated_at,
          html_url,
          pull_request_url,
          author_association,
          _links,
          start_line,
          original_start_line,
          start_side,
          line,
          original_line,
          side,
          subject_type,
          reactions,
          body_html,
          body_text,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-review-comment
            && url == other.url
            && pull_request_review_id == other.pull_request_review_id
            && id == other.id
            && node_id == other.node_id
            && diff_hunk == other.diff_hunk
            && path == other.path
            && position == other.position
            && original_position == other.original_position
            && commit_id == other.commit_id
            && original_commit_id == other.original_commit_id
            && in_reply_to_id == other.in_reply_to_id
            && user == other.user
            && body == other.body
            && created_at == other.created_at
            && updated_at == other.updated_at
            && html_url == other.html_url
            && pull_request_url == other.pull_request_url
            && author_association == other.author_association
            && _links == other._links
            && start_line == other.start_line
            && original_start_line == other.original_start_line
            && start_side == other.start_side
            && line == other.line
            && original_line == other.original_line
            && side == other.side
            && subject_type == other.subject_type
            && reactions == other.reactions
            && body_html == other.body_html
            && body_text == other.body_text
        ;
    }
}
