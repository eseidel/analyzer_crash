import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/license.dart';
import 'package:github/model/license.dart';

@immutable
class License {
  License({
    required this.key,
    required this.name,
    required this.spdx_id,
    required this.url,
    required this.node_id,
    required this.html_url,
    required this.description,
    required this.implementation,
    this.permissions = const [],
    this.conditions = const [],
    this.limitations = const [],
    required this.body,
    required this.featured,
  });

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      key: json['key'] as String,
      name: json['name'] as String,
      spdx_id: json['spdx_id'] as String,
      url: json['url'] as String,
      node_id: json['node_id'] as String,
      html_url: json['html_url'] as String,
      description: json['description'] as String,
      implementation: json['implementation'] as String,
      permissions: (json['permissions'] as List).cast<String>(),
      conditions: (json['conditions'] as List).cast<String>(),
      limitations: (json['limitations'] as List).cast<String>(),
      body: json['body'] as String,
      featured: (json['featured'] as bool),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static License? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return License.fromJson(json);
  }

  final String key;
  final String name;
  final String spdx_id;
  final String url;
  final String node_id;
  final String html_url;
  final String description;
  final String implementation;
  final List<String> permissions;
  final List<String> conditions;
  final List<String> limitations;
  final String body;
  final bool featured;

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'spdx_id': spdx_id,
      'url': url,
      'node_id': node_id,
      'html_url': html_url,
      'description': description,
      'implementation': implementation,
      'permissions': permissions,
      'conditions': conditions,
      'limitations': limitations,
      'body': body,
      'featured': featured,
    };
  }

  @override
  int get hashCode => Object.hash(
    key,
    name,
    spdx_id,
    url,
    node_id,
    html_url,
    description,
    implementation,
    permissions,
    conditions,
    limitations,
    body,
    featured,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is License &&
        key == other.key &&
        name == other.name &&
        spdx_id == other.spdx_id &&
        url == other.url &&
        node_id == other.node_id &&
        html_url == other.html_url &&
        description == other.description &&
        implementation == other.implementation &&
        listsEqual(permissions, other.permissions) &&
        listsEqual(conditions, other.conditions) &&
        listsEqual(limitations, other.limitations) &&
        body == other.body &&
        featured == other.featured;
  }
}
