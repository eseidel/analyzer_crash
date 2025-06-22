import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
import 'package:github/model/full-repository_squash_merge_commit_title.dart';
enum Full-repositorySquashMergeCommitTitle {
    prTitle._('PR_TITLE'),
    commitOrPrTitle._('COMMIT_OR_PR_TITLE'),
    ;

    const Full-repositorySquashMergeCommitTitle._(this.value);

    factory Full-repositorySquashMergeCommitTitle.fromJson(String json) {
        return Full-repositorySquashMergeCommitTitle.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Full-repositorySquashMergeCommitTitle value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Full-repositorySquashMergeCommitTitle? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Full-repositorySquashMergeCommitTitle.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
