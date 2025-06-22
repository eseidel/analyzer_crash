import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
import 'package:github/model/gist-comment.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/author-association.dart';
@immutable
class Gist-comment {
    Gist-comment(
        { required this.id,required this.node_id,required this.url,required this.body,required this.user,required this.created_at,required this.updated_at,required this.author_association,
         }
    );

    factory Gist-comment.fromJson(Map<String, dynamic>
        json) {
        return Gist-comment(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            body: json['body'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            author_association: Author-association.fromJson(json['author_association'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gist-comment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gist-comment.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final String  body;
    final Nullable-simple-user  user;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Author-association  author_association;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'body': body,
            'user': user.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'author_association': author_association.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          body,
          user,
          created_at,
          updated_at,
          author_association,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gist-comment
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && body == other.body
            && user == other.user
            && created_at == other.created_at
            && updated_at == other.updated_at
            && author_association == other.author_association
        ;
    }
}
