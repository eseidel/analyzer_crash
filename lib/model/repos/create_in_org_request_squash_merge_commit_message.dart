import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_in_org_request_squash_merge_commit_message.dart';
import 'package:github/model/repos/create_in_org_request_squash_merge_commit_message.dart';
enum Repos&#x2F;createInOrgRequestSquashMergeCommitMessage {
    prBody._('PR_BODY'),
    commitMessages._('COMMIT_MESSAGES'),
    blank._('BLANK'),
    ;

    const Repos&#x2F;createInOrgRequestSquashMergeCommitMessage._(this.value);

    factory Repos&#x2F;createInOrgRequestSquashMergeCommitMessage.fromJson(String json) {
        return Repos&#x2F;createInOrgRequestSquashMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Repos&#x2F;createInOrgRequestSquashMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createInOrgRequestSquashMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createInOrgRequestSquashMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
