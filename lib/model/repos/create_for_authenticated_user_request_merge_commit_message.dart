import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_message.dart';
import 'package:github/model/repos/create_for_authenticated_user_request_merge_commit_message.dart';
enum Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage {
    prBody._('PR_BODY'),
    prTitle._('PR_TITLE'),
    blank._('BLANK'),
    ;

    const Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage._(this.value);

    factory Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage.fromJson(String json) {
        return Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createForAuthenticatedUserRequestMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
