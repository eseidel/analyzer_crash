import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
import 'package:github/model/project.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project_organization_permission.dart';
@immutable
class Project {
    Project(
        { required this.owner_url,required this.url,required this.html_url,required this.columns_url,required this.id,required this.node_id,required this.name,required this.body,required this.number,required this.state,required this.creator,required this.created_at,required this.updated_at, this.organization_permission, this.private,
         }
    );

    factory Project.fromJson(Map<String, dynamic>
        json) {
        return Project(
            owner_url: json['owner_url'] as String ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            columns_url: json['columns_url'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            name: json['name'] as String ,
            body: json['body'] as String ,
            number: (json['number'] as int).toInt() ,
            state: json['state'] as String ,
            creator: Nullable-simple-user.fromJson(json['creator'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            organization_permission: ProjectOrganizationPermission.maybeFromJson(json['organization_permission'] as String?) ,
            private: (json['private'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Project? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Project.fromJson(json);
    }

    final String  owner_url;
    final String  url;
    final String  html_url;
    final String  columns_url;
    final int  id;
    final String  node_id;
    final String  name;
    final String  body;
    final int  number;
    final String  state;
    final Nullable-simple-user  creator;
    final DateTime  created_at;
    final DateTime  updated_at;
    final  ProjectOrganizationPermission? organization_permission;
    final  bool? private;


    Map<String, dynamic> toJson() {
        return {
            'owner_url': owner_url,
            'url': url,
            'html_url': html_url,
            'columns_url': columns_url,
            'id': id,
            'node_id': node_id,
            'name': name,
            'body': body,
            'number': number,
            'state': state,
            'creator': creator.toJson(),
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'organization_permission': organization_permission?.toJson(),
            'private': private,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          owner_url,
          url,
          html_url,
          columns_url,
          id,
          node_id,
          name,
          body,
          number,
          state,
          creator,
          created_at,
          updated_at,
          organization_permission,
          private,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Project
            && owner_url == other.owner_url
            && url == other.url
            && html_url == other.html_url
            && columns_url == other.columns_url
            && id == other.id
            && node_id == other.node_id
            && name == other.name
            && body == other.body
            && number == other.number
            && state == other.state
            && creator == other.creator
            && created_at == other.created_at
            && updated_at == other.updated_at
            && organization_permission == other.organization_permission
            && private == other.private
        ;
    }
}
