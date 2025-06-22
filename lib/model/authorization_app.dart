import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/authorization_app.dart';

@immutable
class AuthorizationApp {
  AuthorizationApp({
    required this.client_id,
    required this.name,
    required this.url,
  });

  factory AuthorizationApp.fromJson(Map<String, dynamic> json) {
    return AuthorizationApp(
      client_id: json['client_id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AuthorizationApp? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return AuthorizationApp.fromJson(json);
  }

  final String client_id;
  final String name;
  final String url;

  Map<String, dynamic> toJson() {
    return {'client_id': client_id, 'name': name, 'url': url};
  }

  @override
  int get hashCode => Object.hash(client_id, name, url);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthorizationApp &&
        client_id == other.client_id &&
        name == other.name &&
        url == other.url;
  }
}
