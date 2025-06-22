import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';

enum RepositorySquashMergeCommitTitle {
  prTitle._('PR_TITLE'),
  commitOrPrTitle._('COMMIT_OR_PR_TITLE');

  const RepositorySquashMergeCommitTitle._(this.value);

  factory RepositorySquashMergeCommitTitle.fromJson(String json) {
    return RepositorySquashMergeCommitTitle.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositorySquashMergeCommitTitle value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositorySquashMergeCommitTitle? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositorySquashMergeCommitTitle.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
