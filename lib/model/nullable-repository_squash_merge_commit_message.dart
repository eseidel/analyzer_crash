import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_message.dart';
enum Nullable-repositorySquashMergeCommitMessage {
    prBody._('PR_BODY'),
    commitMessages._('COMMIT_MESSAGES'),
    blank._('BLANK'),
    ;

    const Nullable-repositorySquashMergeCommitMessage._(this.value);

    factory Nullable-repositorySquashMergeCommitMessage.fromJson(String json) {
        return Nullable-repositorySquashMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-repositorySquashMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-repositorySquashMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-repositorySquashMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
