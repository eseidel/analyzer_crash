import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/tag.dart';
import 'package:github/model/tag_commit.dart';
import 'package:github/model/tag.dart';
import 'package:github/model/tag_commit.dart';

@immutable
class Tag {
  Tag({
    required this.name,
    required this.commit,
    required this.zipball_url,
    required this.tarball_url,
    required this.node_id,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String,
      commit: TagCommit.fromJson(json['commit'] as Map<String, dynamic>),
      zipball_url: json['zipball_url'] as String,
      tarball_url: json['tarball_url'] as String,
      node_id: json['node_id'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Tag? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Tag.fromJson(json);
  }

  final String name;
  final TagCommit commit;
  final String zipball_url;
  final String tarball_url;
  final String node_id;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit.toJson(),
      'zipball_url': zipball_url,
      'tarball_url': tarball_url,
      'node_id': node_id,
    };
  }

  @override
  int get hashCode =>
      Object.hash(name, commit, zipball_url, tarball_url, node_id);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Tag &&
        name == other.name &&
        commit == other.commit &&
        zipball_url == other.zipball_url &&
        tarball_url == other.tarball_url &&
        node_id == other.node_id;
  }
}
