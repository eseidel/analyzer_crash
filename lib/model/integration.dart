import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';

@immutable
class Integration {
  Integration({
    required this.id,
    this.slug,
    required this.node_id,
    this.client_id,
    required this.owner,
    required this.name,
    required this.description,
    required this.external_url,
    required this.html_url,
    required this.created_at,
    required this.updated_at,
    required this.permissions,
    this.events = const [],
    this.installations_count,
  });

  factory Integration.fromJson(Map<String, dynamic> json) {
    return Integration(
      id: (json['id'] as int).toInt(),
      slug: json['slug'] as String?,
      node_id: json['node_id'] as String,
      client_id: json['client_id'] as String?,
      owner: IntegrationOwner.fromJson(json['owner'] as dynamic),
      name: json['name'] as String,
      description: json['description'] as String,
      external_url: json['external_url'] as String,
      html_url: json['html_url'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      permissions: IntegrationPermissions.fromJson(
        json['permissions'] as Map<String, dynamic>,
      ),
      events: (json['events'] as List).cast<String>(),
      installations_count: (json['installations_count'] as int?).toInt(),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Integration? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Integration.fromJson(json);
  }

  final int id;
  final String? slug;
  final String node_id;
  final String? client_id;
  final IntegrationOwner owner;
  final String name;
  final String description;
  final String external_url;
  final String html_url;
  final DateTime created_at;
  final DateTime updated_at;
  final IntegrationPermissions permissions;
  final List<String> events;
  final int? installations_count;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'node_id': node_id,
      'client_id': client_id,
      'owner': owner.toJson(),
      'name': name,
      'description': description,
      'external_url': external_url,
      'html_url': html_url,
      'created_at': created_at.toIso8601String(),
      'updated_at': updated_at.toIso8601String(),
      'permissions': permissions.toJson(),
      'events': events,
      'installations_count': installations_count,
    };
  }

  @override
  int get hashCode => Object.hash(
    id,
    slug,
    node_id,
    client_id,
    owner,
    name,
    description,
    external_url,
    html_url,
    created_at,
    updated_at,
    permissions,
    events,
    installations_count,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Integration &&
        id == other.id &&
        slug == other.slug &&
        node_id == other.node_id &&
        client_id == other.client_id &&
        owner == other.owner &&
        name == other.name &&
        description == other.description &&
        external_url == other.external_url &&
        html_url == other.html_url &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        permissions == other.permissions &&
        listsEqual(events, other.events) &&
        installations_count == other.installations_count;
  }
}
