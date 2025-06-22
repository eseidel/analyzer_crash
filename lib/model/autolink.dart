import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/autolink.dart';
import 'package:github/model/autolink.dart';

@immutable
class Autolink {
  Autolink({
    required this.id,
    required this.key_prefix,
    required this.url_template,
    required this.is_alphanumeric,
  });

  factory Autolink.fromJson(Map<String, dynamic> json) {
    return Autolink(
      id: (json['id'] as int).toInt(),
      key_prefix: json['key_prefix'] as String,
      url_template: json['url_template'] as String,
      is_alphanumeric: (json['is_alphanumeric'] as bool),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Autolink? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Autolink.fromJson(json);
  }

  final int id;
  final String key_prefix;
  final String url_template;
  final bool is_alphanumeric;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key_prefix': key_prefix,
      'url_template': url_template,
      'is_alphanumeric': is_alphanumeric,
    };
  }

  @override
  int get hashCode =>
      Object.hash(id, key_prefix, url_template, is_alphanumeric);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Autolink &&
        id == other.id &&
        key_prefix == other.key_prefix &&
        url_template == other.url_template &&
        is_alphanumeric == other.is_alphanumeric;
  }
}
