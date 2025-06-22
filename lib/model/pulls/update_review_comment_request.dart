import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/update_review_comment_request.dart';
import 'package:github/model/pulls/update_review_comment_request.dart';
@immutable
class Pulls&#x2F;updateReviewCommentRequest {
    Pulls&#x2F;updateReviewCommentRequest(
        { required this.body,
         }
    );

    factory Pulls&#x2F;updateReviewCommentRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;updateReviewCommentRequest(
            body: json['body'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;updateReviewCommentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;updateReviewCommentRequest.fromJson(json);
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
        return other is Pulls&#x2F;updateReviewCommentRequest
            && body == other.body
        ;
    }
}
