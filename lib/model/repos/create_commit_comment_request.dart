import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_commit_comment_request.dart';
import 'package:github/model/repos/create_commit_comment_request.dart';
@immutable
class Repos&#x2F;createCommitCommentRequest {
    Repos&#x2F;createCommitCommentRequest(
        { required this.body, this.path, this.position, this.line,
         }
    );

    factory Repos&#x2F;createCommitCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createCommitCommentRequest(
            body: json['body'] as String ,
            path: json['path'] as String? ,
            position: (json['position'] as int?).toInt() ,
            line: (json['line'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createCommitCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createCommitCommentRequest.fromJson(json);
    }

    final String  body;
    final  String? path;
    final  int? position;
    final  int? line;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
            'path': path,
            'position': position,
            'line': line,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          body,
          path,
          position,
          line,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createCommitCommentRequest
            && body == other.body
            && path == other.path
            && position == other.position
            && line == other.line
        ;
    }
}
