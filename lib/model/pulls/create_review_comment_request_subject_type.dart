import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/create_review_comment_request_subject_type.dart';
import 'package:github/model/pulls/create_review_comment_request_subject_type.dart';
enum Pulls&#x2F;createReviewCommentRequestSubjectType {
    line._('line'),
    file._('file'),
    ;

    const Pulls&#x2F;createReviewCommentRequestSubjectType._(this.value);

    factory Pulls&#x2F;createReviewCommentRequestSubjectType.fromJson(String json) {
        return Pulls&#x2F;createReviewCommentRequestSubjectType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;createReviewCommentRequestSubjectType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;createReviewCommentRequestSubjectType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;createReviewCommentRequestSubjectType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
