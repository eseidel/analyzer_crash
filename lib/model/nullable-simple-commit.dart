import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
import 'package:github/model/nullable-simple-commit.dart';
import 'package:github/model/nullable-simple-commit_author.dart';
import 'package:github/model/nullable-simple-commit_committer.dart';
@immutable
class Nullable-simple-commit {
    Nullable-simple-commit(
        { required this.id,required this.tree_id,required this.message,required this.timestamp,required this.author,required this.committer,
         }
    );

    factory Nullable-simple-commit.fromJson(Map<String, dynamic>
        json) {
        return Nullable-simple-commit(
            id: json['id'] as String ,
            tree_id: json['tree_id'] as String ,
            message: json['message'] as String ,
            timestamp: DateTime.parse(json['timestamp'] as String),
            author: Nullable-simple-commitAuthor.fromJson(json['author'] as Map<String, dynamic>) ,
            committer: Nullable-simple-commitCommitter.fromJson(json['committer'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-simple-commit? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Nullable-simple-commit.fromJson(json);
    }

    final String  id;
    final String  tree_id;
    final String  message;
    final DateTime  timestamp;
    final Nullable-simple-commitAuthor  author;
    final Nullable-simple-commitCommitter  committer;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'tree_id': tree_id,
            'message': message,
            'timestamp': timestamp.toIso8601String(),
            'author': author.toJson(),
            'committer': committer.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          tree_id,
          message,
          timestamp,
          author,
          committer,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Nullable-simple-commit
            && id == other.id
            && tree_id == other.tree_id
            && message == other.message
            && timestamp == other.timestamp
            && author == other.author
            && committer == other.committer
        ;
    }
}
