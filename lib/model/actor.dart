import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actor.dart';
import 'package:github/model/actor.dart';

@immutable
class Actor {
  Actor({
    required this.id,
    required this.login,
    this.display_login,
    required this.gravatar_id,
    required this.url,
    required this.avatar_url,
  });

  factory Actor.fromJson(Map<String, dynamic> json) {
    return Actor(
      id: (json['id'] as int).toInt(),
      login: json['login'] as String,
      display_login: json['display_login'] as String?,
      gravatar_id: json['gravatar_id'] as String,
      url: json['url'] as String,
      avatar_url: json['avatar_url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Actor? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Actor.fromJson(json);
  }

  final int id;
  final String login;
  final String? display_login;
  final String gravatar_id;
  final String url;
  final String avatar_url;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'display_login': display_login,
      'gravatar_id': gravatar_id,
      'url': url,
      'avatar_url': avatar_url,
    };
  }

  @override
  int get hashCode =>
      Object.hash(id, login, display_login, gravatar_id, url, avatar_url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Actor &&
        id == other.id &&
        login == other.login &&
        display_login == other.display_login &&
        gravatar_id == other.gravatar_id &&
        url == other.url &&
        avatar_url == other.avatar_url;
  }
}
