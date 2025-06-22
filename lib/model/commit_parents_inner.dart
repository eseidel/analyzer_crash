import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_parents_inner.dart';

@immutable
class CommitParentsInner {
  CommitParentsInner({required this.sha, required this.url, this.html_url});

  factory CommitParentsInner.fromJson(Map<String, dynamic> json) {
    return CommitParentsInner(
      sha: json['sha'] as String,
      url: json['url'] as String,
      html_url: json['html_url'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CommitParentsInner? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CommitParentsInner.fromJson(json);
  }

  final String sha;
  final String url;
  final String? html_url;

  Map<String, dynamic> toJson() {
    return {'sha': sha, 'url': url, 'html_url': html_url};
  }

  @override
  int get hashCode => Object.hash(sha, url, html_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CommitParentsInner &&
        sha == other.sha &&
        url == other.url &&
        html_url == other.html_url;
  }
}
