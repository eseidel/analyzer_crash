import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
import 'package:github/model/nullable-repository_merge_commit_title.dart';
enum Nullable-repositoryMergeCommitTitle {
    prTitle._('PR_TITLE'),
    mergeMessage._('MERGE_MESSAGE'),
    ;

    const Nullable-repositoryMergeCommitTitle._(this.value);

    factory Nullable-repositoryMergeCommitTitle.fromJson(String json) {
        return Nullable-repositoryMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-repositoryMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-repositoryMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-repositoryMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
