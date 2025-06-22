import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/blob.dart';
import 'package:github/model/blob.dart';

@immutable
class Blob {
  Blob({
    required this.content,
    required this.encoding,
    required this.url,
    required this.sha,
    required this.size,
    required this.node_id,
    this.highlighted_content,
  });

  factory Blob.fromJson(Map<String, dynamic> json) {
    return Blob(
      content: json['content'] as String,
      encoding: json['encoding'] as String,
      url: json['url'] as String,
      sha: json['sha'] as String,
      size: (json['size'] as int).toInt(),
      node_id: json['node_id'] as String,
      highlighted_content: json['highlighted_content'] as String?,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Blob? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Blob.fromJson(json);
  }

  final String content;
  final String encoding;
  final String url;
  final String sha;
  final int size;
  final String node_id;
  final String? highlighted_content;

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'encoding': encoding,
      'url': url,
      'sha': sha,
      'size': size,
      'node_id': node_id,
      'highlighted_content': highlighted_content,
    };
  }

  @override
  int get hashCode => Object.hash(
    content,
    encoding,
    url,
    sha,
    size,
    node_id,
    highlighted_content,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Blob &&
        content == other.content &&
        encoding == other.encoding &&
        url == other.url &&
        sha == other.sha &&
        size == other.size &&
        node_id == other.node_id &&
        highlighted_content == other.highlighted_content;
  }
}
