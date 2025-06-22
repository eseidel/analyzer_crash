import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';

enum RepositorySquashMergeCommitMessage {
  prBody._('PR_BODY'),
  commitMessages._('COMMIT_MESSAGES'),
  blank._('BLANK');

  const RepositorySquashMergeCommitMessage._(this.value);

  factory RepositorySquashMergeCommitMessage.fromJson(String json) {
    return RepositorySquashMergeCommitMessage.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositorySquashMergeCommitMessage value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositorySquashMergeCommitMessage? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositorySquashMergeCommitMessage.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
