import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_title.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_squash_merge_commit_title.dart';
enum Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle {
    prTitle._('PR_TITLE'),
    commitOrPrTitle._('COMMIT_OR_PR_TITLE'),
    ;

    const Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle._(this.value);

    factory Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle.fromJson(String json) {
        return Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createForAuthenticatedUserRequestSquashMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
