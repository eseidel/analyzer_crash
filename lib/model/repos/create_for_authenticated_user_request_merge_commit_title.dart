import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_title.dart';
enum Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle {
    prTitle._('PR_TITLE'),
    mergeMessage._('MERGE_MESSAGE'),
    ;

    const Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle._(this.value);

    factory Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle.fromJson(String json) {
        return Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createForAuthenticatedUserRequestMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
