import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
import 'package:github/model/full-repository_merge_commit_title.dart';
enum Full-repositoryMergeCommitTitle {
    prTitle._('PR_TITLE'),
    mergeMessage._('MERGE_MESSAGE'),
    ;

    const Full-repositoryMergeCommitTitle._(this.value);

    factory Full-repositoryMergeCommitTitle.fromJson(String json) {
        return Full-repositoryMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Full-repositoryMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Full-repositoryMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Full-repositoryMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
