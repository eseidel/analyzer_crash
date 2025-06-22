import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_comment_request_side.dart';
import 'package:github/model/pulls/create_review_comment_request_side.dart';
enum Pulls&#x2F;createReviewCommentRequestSide {
    left._('LEFT'),
    right._('RIGHT'),
    ;

    const Pulls&#x2F;createReviewCommentRequestSide._(this.value);

    factory Pulls&#x2F;createReviewCommentRequestSide.fromJson(String json) {
        return Pulls&#x2F;createReviewCommentRequestSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;createReviewCommentRequestSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewCommentRequestSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewCommentRequestSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
