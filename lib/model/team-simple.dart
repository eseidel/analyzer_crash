import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-simple.dart';
import 'package:github/model/team-simple.dart';
@immutable
class Team-simple {
    Team-simple(
        { required this.id,required this.node_id,required this.url,required this.members_url,required this.name,required this.description,required this.permission, this.privacy, this.notification_setting,required this.html_url,required this.repositories_url,required this.slug, this.ldap_dn,
         }
    );

    factory Team-simple.fromJson(Map<String, dynamic>
        json) {
        return Team-simple(
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            members_url: json['members_url'] as String ,
            name: json['name'] as String ,
            description: json['description'] as String ,
            permission: json['permission'] as String ,
            privacy: json['privacy'] as String? ,
            notification_setting: json['notification_setting'] as String? ,
            html_url: json['html_url'] as String ,
            repositories_url: json['repositories_url'] as String ,
            slug: json['slug'] as String ,
            ldap_dn: json['ldap_dn'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-simple? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-simple.fromJson(json);
    }

    final int  id;
    final String  node_id;
    final String  url;
    final String  members_url;
    final String  name;
    final String  description;
    final String  permission;
    final  String? privacy;
    final  String? notification_setting;
    final String  html_url;
    final String  repositories_url;
    final String  slug;
    final  String? ldap_dn;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'node_id': node_id,
            'url': url,
            'members_url': members_url,
            'name': name,
            'description': description,
            'permission': permission,
            'privacy': privacy,
            'notification_setting': notification_setting,
            'html_url': html_url,
            'repositories_url': repositories_url,
            'slug': slug,
            'ldap_dn': ldap_dn,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          node_id,
          url,
          members_url,
          name,
          description,
          permission,
          privacy,
          notification_setting,
          html_url,
          repositories_url,
          slug,
          ldap_dn,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-simple
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && members_url == other.members_url
            && name == other.name
            && description == other.description
            && permission == other.permission
            && privacy == other.privacy
            && notification_setting == other.notification_setting
            && html_url == other.html_url
            && repositories_url == other.repositories_url
            && slug == other.slug
            && ldap_dn == other.ldap_dn
        ;
    }
}
