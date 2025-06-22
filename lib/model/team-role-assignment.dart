import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-role-assignment.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/team-role-assignment.dart';
import 'package:github/model/team-role-assignment_assignment.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
@immutable
class Team-role-assignment {
    Team-role-assignment(
        {  this.assignment,required this.id,required this.node_id,required this.name,required this.slug,required this.description, this.privacy, this.notification_setting,required this.permission, this.permissions,required this.url,required this.html_url,required this.members_url,required this.repositories_url,required this.parent,
         }
    );

    factory Team-role-assignment.fromJson(Map<String, dynamic>
        json) {
        return Team-role-assignment(
            assignment: Team-role-assignmentAssignment.maybeFromJson(json['assignment'] as String?) ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            slug: json['slug'] as String ,
            description: json['description'] as String ,
            privacy: json['privacy'] as String? ,
            notification_setting: json['notification_setting'] as String? ,
            permission: json['permission'] as String ,
            permissions: Team-role-assignmentPermissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            members_url: json['members_url'] as String ,
            repositories_url: json['repositories_url'] as String ,
            parent: Nullable-team-simple.fromJson(json['parent'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-role-assignment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-role-assignment.fromJson(json);
    }

    final  Team-role-assignmentAssignment? assignment;
    final int  id;
    final String  node_id;
    final String  name;
    final String  slug;
    final String  description;
    final  String? privacy;
    final  String? notification_setting;
    final String  permission;
    final  Team-role-assignmentPermissions? permissions;
    final String  url;
    final String  html_url;
    final String  members_url;
    final String  repositories_url;
    final Nullable-team-simple  parent;


    Map<String, dynamic> toJson() {
        return {
            'assignment': assignment?.toJson(),
            'id': id,
            'node_id': node_id,
            'name': name,
            'slug': slug,
            'description': description,
            'privacy': privacy,
            'notification_setting': notification_setting,
            'permission': permission,
            'permissions': permissions?.toJson(),
            'url': url,
            'html_url': html_url,
            'members_url': members_url,
            'repositories_url': repositories_url,
            'parent': parent.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          assignment,
          id,
          node_id,
          name,
          slug,
          description,
          privacy,
          notification_setting,
          permission,
          permissions,
          url,
          html_url,
          members_url,
          repositories_url,
          parent,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-role-assignment
            && assignment == other.assignment
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && slug == other.slug
            && description == other.description
            && privacy == other.privacy
            && notification_setting == other.notification_setting
            && permission == other.permission
            && permissions == other.permissions
            && url == other.url
            && html_url == other.html_url
            && members_url == other.members_url
            && repositories_url == other.repositories_url
            && parent == other.parent
        ;
    }
}
