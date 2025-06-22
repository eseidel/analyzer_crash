import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-full.dart';
import 'package:github/model/team-full_privacy.dart';
import 'package:github/model/team-full_notification_setting.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
@immutable
class Team-full {
    Team-full(
        { required this.id,required this.node_id,required this.url,required this.html_url,required this.name,required this.slug,required this.description, this.privacy, this.notification_setting,required this.permission,required this.members_url,required this.repositories_url, this.parent,required this.members_count,required this.repos_count,required this.created_at,required this.updated_at,required this.organization, this.ldap_dn,
         }
    );

    factory Team-full.fromJson(Map<String, dynamic>
        json) {
        return Team-full(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            name: json['name'] as String ,
            slug: json['slug'] as String ,
            description: json['description'] as String ,
            privacy: Team-fullPrivacy.maybeFromJson(json['privacy'] as String?) ,
            notification_setting: Team-fullNotificationSetting.maybeFromJson(json['notification_setting'] as String?) ,
            permission: json['permission'] as String ,
            members_url: json['members_url'] as String ,
            repositories_url: json['repositories_url'] as String ,
            parent: Nullable-team-simple.maybeFromJson(json['parent'] as Map<String, dynamic>?) ,
            members_count: (json['members_count'] as int).toInt() ,
            repos_count: (json['repos_count'] as int).toInt() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            organization: Team-organization.fromJson(json['organization'] as Map<String, dynamic>) ,
            ldap_dn: json['ldap_dn'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-full? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-full.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final String  html_url;
    final String  name;
    final String  slug;
    final String  description;
    final  Team-fullPrivacy? privacy;
    final  Team-fullNotificationSetting? notification_setting;
    final String  permission;
    final String  members_url;
    final String  repositories_url;
    final  Nullable-team-simple? parent;
    final int  members_count;
    final int  repos_count;
    final DateTime  created_at;
    final DateTime  updated_at;
    final Team-organization  organization;
    final  String? ldap_dn;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'html_url': html_url,
            'name': name,
            'slug': slug,
            'description': description,
            'privacy': privacy?.toJson(),
            'notification_setting': notification_setting?.toJson(),
            'permission': permission,
            'members_url': members_url,
            'repositories_url': repositories_url,
            'parent': parent?.toJson(),
            'members_count': members_count,
            'repos_count': repos_count,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'organization': organization.toJson(),
            'ldap_dn': ldap_dn,
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
          members_count,
          repos_count,
          created_at,
          updated_at,
          organization,
          ldap_dn,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-full
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
            && members_count == other.members_count
            && repos_count == other.repos_count
            && created_at == other.created_at
            && updated_at == other.updated_at
            && organization == other.organization
            && ldap_dn == other.ldap_dn
        ;
    }
}
