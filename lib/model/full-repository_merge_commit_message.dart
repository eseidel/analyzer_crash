import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
import 'package:github/model/full-repository_merge_commit_message.dart';
enum Full-repositoryMergeCommitMessage {
    prBody._('PR_BODY'),
    prTitle._('PR_TITLE'),
    blank._('BLANK'),
    ;

    const Full-repositoryMergeCommitMessage._(this.value);

    factory Full-repositoryMergeCommitMessage.fromJson(String json) {
        return Full-repositoryMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Full-repositoryMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Full-repositoryMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Full-repositoryMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
