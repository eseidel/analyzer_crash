import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
@immutable
class Branch-restriction-policyAppsInner {
    Branch-restriction-policyAppsInner(
        {  this.id, this.slug, this.node_id, this.owner, this.name, this.client_id, this.description, this.external_url, this.html_url, this.created_at, this.updated_at, this.permissions, this.events = const [],
         }
    );

    factory Branch-restriction-policyAppsInner.fromJson(Map<String, dynamic>
        json) {
        return Branch-restriction-policyAppsInner(
            id: (json['id'] as int?).toInt() ,
            slug: json['slug'] as String? ,
            node_id: json['node_id'] as String? ,
            owner: Branch-restriction-policyAppsInnerOwner.maybeFromJson(json['owner'] as Map<String, dynamic>?) ,
            name: json['name'] as String? ,
            client_id: json['client_id'] as String? ,
            description: json['description'] as String? ,
            external_url: json['external_url'] as String? ,
            html_url: json['html_url'] as String? ,
            created_at: json['created_at'] as String? ,
            updated_at: json['updated_at'] as String? ,
            permissions: Branch-restriction-policyAppsInnerPermissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
            events: (json['events'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-restriction-policyAppsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-restriction-policyAppsInner.fromJson(json);
    }

    final  int? id;
    final  String? slug;
    final  String? node_id;
    final  Branch-restriction-policyAppsInnerOwner? owner;
    final  String? name;
    final  String? client_id;
    final  String? description;
    final  String? external_url;
    final  String? html_url;
    final  String? created_at;
    final  String? updated_at;
    final  Branch-restriction-policyAppsInnerPermissions? permissions;
    final  List<String>? events;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'slug': slug,
            'node_id': node_id,
            'owner': owner?.toJson(),
            'name': name,
            'client_id': client_id,
            'description': description,
            'external_url': external_url,
            'html_url': html_url,
            'created_at': created_at,
            'updated_at': updated_at,
            'permissions': permissions?.toJson(),
            'events': events,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          slug,
          node_id,
          owner,
          name,
          client_id,
          description,
          external_url,
          html_url,
          created_at,
          updated_at,
          permissions,
          events,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-restriction-policyAppsInner
            && id == other.id
            && slug == other.slug
            && node_id == other.node_id
            && owner == other.owner
            && name == other.name
            && client_id == other.client_id
            && description == other.description
            && external_url == other.external_url
            && html_url == other.html_url
            && created_at == other.created_at
            && updated_at == other.updated_at
            && permissions == other.permissions
            && listsEqual(events, other.events)
        ;
    }
}
