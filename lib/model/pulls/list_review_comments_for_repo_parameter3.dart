import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/list_review_comments_for_repo_parameter3.dart';
import 'package:github/model/pulls/list_review_comments_for_repo_parameter3.dart';
enum Pulls&#x2F;listReviewCommentsForRepoParameter3 {
    asc._('asc'),
    desc._('desc'),
    ;

    const Pulls&#x2F;listReviewCommentsForRepoParameter3._(this.value);

    factory Pulls&#x2F;listReviewCommentsForRepoParameter3.fromJson(String json) {
        return Pulls&#x2F;listReviewCommentsForRepoParameter3.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pulls&#x2F;listReviewCommentsForRepoParameter3 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;listReviewCommentsForRepoParameter3? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;listReviewCommentsForRepoParameter3.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
