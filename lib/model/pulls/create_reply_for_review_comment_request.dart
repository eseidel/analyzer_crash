import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_reply_for_review_comment_request.dart';
import 'package:github/model/pulls/create_reply_for_review_comment_request.dart';
@immutable
class Pulls&#x2F;createReplyForReviewCommentRequest {
    Pulls&#x2F;createReplyForReviewCommentRequest(
        { required this.body,
         }
    );

    factory Pulls&#x2F;createReplyForReviewCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;createReplyForReviewCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReplyForReviewCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReplyForReviewCommentRequest.fromJson(json);
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
        return other is Pulls&#x2F;createReplyForReviewCommentRequest
            && body == other.body
        ;
    }
}
