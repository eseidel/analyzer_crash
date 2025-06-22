import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/search/issues_and_pull_requests_parameter1.dart';
import 'package:github/model/search/issues_and_pull_requests_parameter1.dart';
enum Search&#x2F;issuesAndPullRequestsParameter1 {
    comments._('comments'),
    reactions._('reactions'),
    reactions-+1._('reactions-+1'),
    reactions--1._('reactions--1'),
    reactions-smile._('reactions-smile'),
    reactions-thinkingFace._('reactions-thinking_face'),
    reactions-heart._('reactions-heart'),
    reactions-tada._('reactions-tada'),
    interactions._('interactions'),
    created._('created'),
    updated._('updated'),
    ;

    const Search&#x2F;issuesAndPullRequestsParameter1._(this.value);

    factory Search&#x2F;issuesAndPullRequestsParameter1.fromJson(String json) {
        return Search&#x2F;issuesAndPullRequestsParameter1.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Search&#x2F;issuesAndPullRequestsParameter1 value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Search&#x2F;issuesAndPullRequestsParameter1? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Search&#x2F;issuesAndPullRequestsParameter1.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
