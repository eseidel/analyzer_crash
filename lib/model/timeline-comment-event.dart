import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/timeline-comment-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/timeline-comment-event.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/nullable-integration.dart';
import 'package:github/model/nullable-integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/nullable-integration_permissions.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Timeline-comment-event {
    Timeline-comment-event(
        { required this.event,required this.actor,required this.id,required this.node_id,required this.url, this.body, this.body_text, this.body_html,required this.html_url,required this.user,required this.created_at,required this.updated_at,required this.issue_url,required this.author_association, this.performed_via_github_app, this.reactions,
         }
    );

    factory Timeline-comment-event.fromJson(Map<String, dynamic>
        json) {
        return Timeline-comment-event(
            event: json['event'] as String ,
            actor: Simple-user.fromJson(json['actor'] as Map<String, dynamic>) ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            body: json['body'] as String? ,
            body_text: json['body_text'] as String? ,
            body_html: json['body_html'] as String? ,
            html_url: json['html_url'] as String ,
            user: Simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            issue_url: json['issue_url'] as String ,
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            performed_via_github_app: Nullable-integration.maybeFromJson(json['performed_via_github_app'] as Map<String, dynamic>?) ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Timeline-comment-event? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Timeline-comment-event.fromJson(json);
    }

    final String  event;
    final Simple-user  actor;
    final int  id;
    final String  node_id;
    final String  url;
    final  String? body;
    final  String? body_text;
    final  String? body_html;
    final String  html_url;
    final Simple-user  user;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  issue_url;
    final Author-association  author_association;
    final  Nullable-integration? performed_via_github_app;
    final  Reaction-rollup? reactions;


    Map<String, dynamic> toJson() {
        return {
            'event': event,
            'actor': actor.toJson(),
            'id': id,
            'node_id': node_id,
            'url': url,
            'body': body,
            'body_text': body_text,
            'body_html': body_html,
            'html_url': html_url,
            'user': user.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'issue_url': issue_url,
            'author_association': author_association.toJson(),
            'performed_via_github_app': performed_via_github_app?.toJson(),
            'reactions': reactions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          event,
          actor,
          id,
          node_id,
          url,
          body,
          body_text,
          body_html,
          html_url,
          user,
          created_at,
          updated_at,
          issue_url,
          author_association,
          performed_via_github_app,
          reactions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Timeline-comment-event
            && event == other.event
            && actor == other.actor
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && body == other.body
            && body_text == other.body_text
            && body_html == other.body_html
            && html_url == other.html_url
            && user == other.user
            && created_at == other.created_at
            && updated_at == other.updated_at
            && issue_url == other.issue_url
            && author_association == other.author_association
            && performed_via_github_app == other.performed_via_github_app
            && reactions == other.reactions
        ;
    }
}
