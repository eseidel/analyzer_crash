import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/enterprise.dart';

@immutable
class Enterprise {
  Enterprise({
    this.description,
    required this.html_url,
    this.website_url,
    required this.id,
    required this.node_id,
    required this.name,
    required this.slug,
    required this.created_at,
    required this.updated_at,
    required this.avatar_url,
  });

  factory Enterprise.fromJson(Map<String, dynamic> json) {
    return Enterprise(
      description: json['description'] as String?,
      html_url: json['html_url'] as String,
      website_url: json['website_url'] as String?,
      id: (json['id'] as int).toInt(),
      node_id: json['node_id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      avatar_url: json['avatar_url'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Enterprise? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Enterprise.fromJson(json);
  }

  final String? description;
  final String html_url;
  final String? website_url;
  final int id;
  final String node_id;
  final String name;
  final String slug;
  final DateTime created_at;
  final DateTime updated_at;
  final String avatar_url;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'html_url': html_url,
      'website_url': website_url,
      'id': id,
      'node_id': node_id,
      'name': name,
      'slug': slug,
      'created_at': created_at.toIso8601String(),
      'updated_at': updated_at.toIso8601String(),
      'avatar_url': avatar_url,
    };
  }

  @override
  int get hashCode => Object.hash(
    description,
    html_url,
    website_url,
    id,
    node_id,
    name,
    slug,
    created_at,
    updated_at,
    avatar_url,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Enterprise &&
        description == other.description &&
        html_url == other.html_url &&
        website_url == other.website_url &&
        id == other.id &&
        node_id == other.node_id &&
        name == other.name &&
        slug == other.slug &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        avatar_url == other.avatar_url;
  }
}
