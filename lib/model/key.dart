import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/key.dart';
import 'package:github/model/key.dart';

@immutable
class Key {
  Key({
    required this.key,
    required this.id,
    required this.url,
    required this.title,
    required this.created_at,
    required this.verified,
    required this.read_only,
  });

  factory Key.fromJson(Map<String, dynamic> json) {
    return Key(
      key: json['key'] as String,
      id: (json['id'] as int).toInt(),
      url: json['url'] as String,
      title: json['title'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      verified: (json['verified'] as bool),
      read_only: (json['read_only'] as bool),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Key? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Key.fromJson(json);
  }

  final String key;
  final int id;
  final String url;
  final String title;
  final DateTime created_at;
  final bool verified;
  final bool read_only;

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'id': id,
      'url': url,
      'title': title,
      'created_at': created_at.toIso8601String(),
      'verified': verified,
      'read_only': read_only,
    };
  }

  @override
  int get hashCode =>
      Object.hash(key, id, url, title, created_at, verified, read_only);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Key &&
        key == other.key &&
        id == other.id &&
        url == other.url &&
        title == other.title &&
        created_at == other.created_at &&
        verified == other.verified &&
        read_only == other.read_only;
  }
}
