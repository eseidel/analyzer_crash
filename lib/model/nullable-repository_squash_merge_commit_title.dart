import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
import 'package:github/model/nullable-repository_squash_merge_commit_title.dart';
enum Nullable-repositorySquashMergeCommitTitle {
    prTitle._('PR_TITLE'),
    commitOrPrTitle._('COMMIT_OR_PR_TITLE'),
    ;

    const Nullable-repositorySquashMergeCommitTitle._(this.value);

    factory Nullable-repositorySquashMergeCommitTitle.fromJson(String json) {
        return Nullable-repositorySquashMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Nullable-repositorySquashMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Nullable-repositorySquashMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Nullable-repositorySquashMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
