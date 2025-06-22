import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
import 'package:github/model/nullable-repository_merge_commit_message.dart';
enum Nullable-repositoryMergeCommitMessage {
    prBody._('PR_BODY'),
    prTitle._('PR_TITLE'),
    blank._('BLANK'),
    ;

    const Nullable-repositoryMergeCommitMessage._(this.value);

    factory Nullable-repositoryMergeCommitMessage.fromJson(String json) {
        return Nullable-repositoryMergeCommitMessage.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-repositoryMergeCommitMessage value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-repositoryMergeCommitMessage? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-repositoryMergeCommitMessage.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
