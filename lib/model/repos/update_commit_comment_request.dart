import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_commit_comment_request.dart';
import 'package:github/model/repos/update_commit_comment_request.dart';
@immutable
class Repos&#x2F;updateCommitCommentRequest {
    Repos&#x2F;updateCommitCommentRequest(
        { required this.body,
         }
    );

    factory Repos&#x2F;updateCommitCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateCommitCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateCommitCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateCommitCommentRequest.fromJson(json);
    }

    final String  body;


    Map<String, dynamic> toJson() {
        return {
            'body': body,
        };
    }

    @override
    int get hashCode =>
          body.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateCommitCommentRequest
            && body == other.body
        ;
    }
}
