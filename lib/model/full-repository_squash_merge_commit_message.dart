import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
import 'package:github/model/full-repository_squash_merge_commit_message.dart';
enum Full-repositorySquashMergeCommitMessage {
    prBody._('PR_BODY'),
    commitMessages._('COMMIT_MESSAGES'),
    blank._('BLANK'),
    ;

    const Full-repositorySquashMergeCommitMessage._(this.value);

    factory Full-repositorySquashMergeCommitMessage.fromJson(String json) {
        return Full-repositorySquashMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Full-repositorySquashMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Full-repositorySquashMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Full-repositorySquashMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
