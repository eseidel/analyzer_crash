import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
import 'package:github/model/commit-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/reaction-rollup.dart';
@immutable
class Commit-comment {
    Commit-comment(
        { required this.html_url,required this.url,required this.id,required this.node_id,required this.body,required this.path,required this.position,required this.line,required this.commit_id,required this.user,required this.created_at,required this.updated_at,required this.author_association, this.reactions,
         }
    );

    factory Commit-comment.fromJson(Map<String, dynamic>
        json) {
        return Commit-comment(
            html_url: json['html_url'] as String ,
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            body: json['body'] as String ,
            path: json['path'] as String ,
            position: (json['position'] as int).toInt() ,
            line: (json['line'] as int).toInt() ,
            commit_id: json['commit_id'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            author_association: Author-association.fromJson(json['author_association'] as String) ,
            reactions: Reaction-rollup.maybeFromJson(json['reactions'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Commit-comment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Commit-comment.fromJson(json);
    }

    final String  html_url;
    final String  url;
    final int  id;
    final String  node_id;
    final String  body;
    final String  path;
    final int  position;
    final int  line;
    final String  commit_id;
    final Nullable-simple-user  user;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Author-association  author_association;
    final  Reaction-rollup? reactions;


    Map<String, dynamic> toJson() {
        return {
            'html_url': html_url,
            'url': url,
            'id': id,
            'node_id': node_id,
            'body': body,
            'path': path,
            'position': position,
            'line': line,
            'commit_id': commit_id,
            'user': user.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'author_association': author_association.toJson(),
            'reactions': reactions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          html_url,
          url,
          id,
          node_id,
          body,
          path,
          position,
          line,
          commit_id,
          user,
          created_at,
          updated_at,
          author_association,
          reactions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Commit-comment
            && html_url == other.html_url
            && url == other.url
            && id == other.id
            && node_id == other.node_id
            && body == other.body
            && path == other.path
            && position == other.position
            && line == other.line
            && commit_id == other.commit_id
            && user == other.user
            && created_at == other.created_at
            && updated_at == other.updated_at
            && author_association == other.author_association
            && reactions == other.reactions
        ;
    }
}
