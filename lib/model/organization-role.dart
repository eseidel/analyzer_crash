import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-role.dart';
import 'package:github/model/organization-role_base_role.dart';
import 'package:github/model/organization-role_source.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Organization-role {
    Organization-role(
        { required this.id,required this.name, this.description, this.base_role, this.source, this.permissions = const [],required this.organization,required this.created_at,required this.updated_at,
         }
    );

    factory Organization-role.fromJson(Map<String, dynamic>
        json) {
        return Organization-role(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String ,
            description: json['description'] as String? ,
            base_role: Organization-roleBaseRole.maybeFromJson(json['base_role'] as String?) ,
            source: Organization-roleSource.maybeFromJson(json['source'] as String?) ,
            permissions: (json['permissions'] as List).cast<String>() ,
            organization: Nullable-simple-user.fromJson(json['organization'] as Map<String, dynamic>) ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-role? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-role.fromJson(json);
    }

    final int  id;
    final String  name;
    final  String? description;
    final  Organization-roleBaseRole? base_role;
    final  Organization-roleSource? source;
    final List<String>  permissions;
    final Nullable-simple-user  organization;
    final DateTime  created_at;
    final DateTime  updated_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'description': description,
            'base_role': base_role?.toJson(),
            'source': source?.toJson(),
            'permissions': permissions,
            'organization': organization.toJson(),
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
          base_role,
          source,
          permissions,
          organization,
          created_at,
          updated_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-role
            && id == other.id
            && name == other.name
            && description == other.description
            && base_role == other.base_role
            && source == other.source
            && listsEqual(permissions, other.permissions)
            && organization == other.organization
            && created_at == other.created_at
            && updated_at == other.updated_at
        ;
    }
}
