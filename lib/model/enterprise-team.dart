import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/enterprise-team.dart';
@immutable
class Enterprise-team {
    Enterprise-team(
        { required this.id,required this.name, this.description,required this.slug,required this.url, this.sync_to_organizations, this.organization_selection_type, this.group_id, this.group_name,required this.html_url,required this.members_url,required this.created_at,required this.updated_at,
         }
    );

    factory Enterprise-team.fromJson(Map<String, dynamic>
        json) {
        return Enterprise-team(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            description: json['description'] as String? ,
            slug: json['slug'] as String ,
            url: json['url'] as String ,
            sync_to_organizations: json['sync_to_organizations'] as String? ,
            organization_selection_type: json['organization_selection_type'] as String? ,
            group_id: json['group_id'] as String? ,
            group_name: json['group_name'] as String? ,
            html_url: json['html_url'] as String ,
            members_url: json['members_url'] as String ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Enterprise-team? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Enterprise-team.fromJson(json);
    }

    final int  id;
    final String  name;
    final  String? description;
    final String  slug;
    final String  url;
    final  String? sync_to_organizations;
    final  String? organization_selection_type;
    final  String? group_id;
    final  String? group_name;
    final String  html_url;
    final String  members_url;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'description': description,
            'slug': slug,
            'url': url,
            'sync_to_organizations': sync_to_organizations,
            'organization_selection_type': organization_selection_type,
            'group_id': group_id,
            'group_name': group_name,
            'html_url': html_url,
            'members_url': members_url,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
          description,
          slug,
          url,
          sync_to_organizations,
          organization_selection_type,
          group_id,
          group_name,
          html_url,
          members_url,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Enterprise-team
            && id == other.id
            && name == other.name
            && description == other.description
            && slug == other.slug
            && url == other.url
            && sync_to_organizations == other.sync_to_organizations
            && organization_selection_type == other.organization_selection_type
            && group_id == other.group_id
            && group_name == other.group_name
            && html_url == other.html_url
            && members_url == other.members_url
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
