import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location_type.dart';
import 'package:github/model/secret-scanning-location_type.dart';
enum Secret-scanning-locationType {
    commit._('commit'),
    wikiCommit._('wiki_commit'),
    issueTitle._('issue_title'),
    issueBody._('issue_body'),
    issueComment._('issue_comment'),
    discussionTitle._('discussion_title'),
    discussionBody._('discussion_body'),
    discussionComment._('discussion_comment'),
    pullRequestTitle._('pull_request_title'),
    pullRequestBody._('pull_request_body'),
    pullRequestComment._('pull_request_comment'),
    pullRequestReview._('pull_request_review'),
    pullRequestReviewComment._('pull_request_review_comment'),
    ;

    const Secret-scanning-locationType._(this.value);

    factory Secret-scanning-locationType.fromJson(String json) {
        return Secret-scanning-locationType.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Secret-scanning-locationType value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-locationType? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-locationType.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
