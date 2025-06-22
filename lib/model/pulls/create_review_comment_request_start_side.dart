import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_comment_request_start_side.dart';
import 'package:github/model/pulls/create_review_comment_request_start_side.dart';
enum Pulls&#x2F;createReviewCommentRequestStartSide {
    left._('LEFT'),
    right._('RIGHT'),
    side._('side'),
    ;

    const Pulls&#x2F;createReviewCommentRequestStartSide._(this.value);

    factory Pulls&#x2F;createReviewCommentRequestStartSide.fromJson(String json) {
        return Pulls&#x2F;createReviewCommentRequestStartSide.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;createReviewCommentRequestStartSide value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewCommentRequestStartSide? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewCommentRequestStartSide.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
