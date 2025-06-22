import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/pull-request-review.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/pull-request-review_links.dart';
import 'package:github/model/pull-request-review_links_html.dart';
import 'package:github/model/pull-request-review_links_pull_request.dart';
import 'package:github/model/author-association.dart';
@immutable
class Pull-request-review {
    Pull-request-review(
        { required this.id,required this.node_id,required this.user,required this.body,required this.state,required this.html_url,required this.pull_request_url,required this._links, this.submitted_at,required this.commit_id, this.body_html, this.body_text,required this.author_association,
         }
    );

    factory Pull-request-review.fromJson(Map<String, dynamic>
        json) {
        return Pull-request-review(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            body: json['body'] as String ,
            state: json['state'] as String ,
            html_url: json['html_url'] as String ,
            pull_request_url: json['pull_request_url'] as String ,
            _links: Pull-request-reviewLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            submitted_at: maybeParseDateTime(json['submitted_at'] as String?) ,
            commit_id: json['commit_id'] as String ,
            body_html: json['body_html'] as String? ,
            body_text: json['body_text'] as String? ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pull-request-review? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pull-request-review.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final Nullable-simple-user  user;
    final String  body;
    final String  state;
    final String  html_url;
    final String  pull_request_url;
    final Pull-request-reviewLinks  _links;
    final  DateTime? submitted_at;
    final String  commit_id;
    final  String? body_html;
    final  String? body_text;
    final Author-association  author_association;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'user': user.toJson(),
            'body': body,
            'state': state,
            'html_url': html_url,
            'pull_request_url': pull_request_url,
            '_links': _links.toJson(),
            'submitted_at': submitted_at?.toIso8601String(),
            'commit_id': commit_id,
            'body_html': body_html,
            'body_text': body_text,
            'author_association': author_association.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          user,
          body,
          state,
          html_url,
          pull_request_url,
          _links,
          submitted_at,
          commit_id,
          body_html,
          body_text,
          author_association,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pull-request-review
            && id == other.id
            && node_id == other.node_id
            && user == other.user
            && body == other.body
            && state == other.state
            && html_url == other.html_url
            && pull_request_url == other.pull_request_url
            && _links == other._links
            && submitted_at == other.submitted_at
            && commit_id == other.commit_id
            && body_html == other.body_html
            && body_text == other.body_text
            && author_association == other.author_association
        ;
    }
}
