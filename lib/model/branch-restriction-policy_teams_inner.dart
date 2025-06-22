import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
@immutable
class Branch-restriction-policyTeamsInner {
    Branch-restriction-policyTeamsInner(
        {  this.id, this.node_id, this.url, this.html_url, this.name, this.slug, this.description, this.privacy, this.notification_setting, this.permission, this.members_url, this.repositories_url, this.parent,
         }
    );

    factory Branch-restriction-policyTeamsInner.fromJson(Map<String, dynamic>
        json) {
        return Branch-restriction-policyTeamsInner(
            id: (json['id'] as int?).toInt() ,
            node_id: json['node_id'] as String? ,
            url: json['url'] as String? ,
            html_url: json['html_url'] as String? ,
            name: json['name'] as String? ,
            slug: json['slug'] as String? ,
            description: json['description'] as String? ,
            privacy: json['privacy'] as String? ,
            notification_setting: json['notification_setting'] as String? ,
            permission: json['permission'] as String? ,
            members_url: json['members_url'] as String? ,
            repositories_url: json['repositories_url'] as String? ,
            parent: json['parent'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-restriction-policyTeamsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-restriction-policyTeamsInner.fromJson(json);
    }

    final  int? id;
    final  String? node_id;
    final  String? url;
    final  String? html_url;
    final  String? name;
    final  String? slug;
    final  String? description;
    final  String? privacy;
    final  String? notification_setting;
    final  String? permission;
    final  String? members_url;
    final  String? repositories_url;
    final  String? parent;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'html_url': html_url,
            'name': name,
            'slug': slug,
            'description': description,
            'privacy': privacy,
            'notification_setting': notification_setting,
            'permission': permission,
            'members_url': members_url,
            'repositories_url': repositories_url,
            'parent': parent,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          html_url,
          name,
          slug,
          description,
          privacy,
          notification_setting,
          permission,
          members_url,
          repositories_url,
          parent,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-restriction-policyTeamsInner
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && html_url == other.html_url
            && name == other.name
            && slug == other.slug
            && description == other.description
            && privacy == other.privacy
            && notification_setting == other.notification_setting
            && permission == other.permission
            && members_url == other.members_url
            && repositories_url == other.repositories_url
            && parent == other.parent
        ;
    }
}
