import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_title.dart';

enum RepositoryMergeCommitTitle {
  prTitle._('PR_TITLE'),
  mergeMessage._('MERGE_MESSAGE');

  const RepositoryMergeCommitTitle._(this.value);

  factory RepositoryMergeCommitTitle.fromJson(String json) {
    return RepositoryMergeCommitTitle.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryMergeCommitTitle value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryMergeCommitTitle? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryMergeCommitTitle.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
