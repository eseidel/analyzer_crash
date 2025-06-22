import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/commit_commit_tree.dart';

@immutable
class CommitCommitTree {
  CommitCommitTree({required this.sha, required this.url});

  factory CommitCommitTree.fromJson(Map<String, dynamic> json) {
    return CommitCommitTree(
      sha: json['sha'] as String,
      url: json['url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitCommitTree? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitCommitTree.fromJson(json);
  }

  final String sha;
  final String url;

  Map<String, dynamic> toJson() {
    return {'sha': sha, 'url': url};
  }

  @override
  int get hashCode => Object.hash(sha, url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitCommitTree && sha == other.sha && url == other.url;
  }
}
