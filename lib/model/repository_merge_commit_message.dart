import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_message.dart';

enum RepositoryMergeCommitMessage {
  prBody._('PR_BODY'),
  prTitle._('PR_TITLE'),
  blank._('BLANK');

  const RepositoryMergeCommitMessage._(this.value);

  factory RepositoryMergeCommitMessage.fromJson(String json) {
    return RepositoryMergeCommitMessage.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryMergeCommitMessage value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryMergeCommitMessage? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryMergeCommitMessage.fromJson(json);
  }

  final String value;

  String toJson() => value;

  @override
  String toString() => value;
}
