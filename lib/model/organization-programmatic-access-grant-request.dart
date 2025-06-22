import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-programmatic-access-grant-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant-request_permissions.dart';
import 'package:github/model/organization-programmatic-access-grant-request.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-programmatic-access-grant-request_repository_selection.dart';
import 'package:github/model/organization-programmatic-access-grant-request_permissions.dart';
@immutable
class Organization-programmatic-access-grant-request {
    Organization-programmatic-access-grant-request(
        { required this.id,required this.reason,required this.owner,required this.repository_selection,required this.repositories_url,required this.permissions,required this.created_at,required this.token_id,required this.token_name,required this.token_expired,required this.token_expires_at,required this.token_last_used_at,
         }
    );

    factory Organization-programmatic-access-grant-request.fromJson(Map<String, dynamic>
        json) {
        return Organization-programmatic-access-grant-request(
            id: (json['id'] as int).toInt() ,
            reason: json['reason'] as String ,
            owner: Simple-user.fromJson(json['owner'] as Map<String, dynamic>) ,
            repository_selection: Organization-programmatic-access-grant-requestRepositorySelection.fromJson(json['repository_selection'] as String) ,
            repositories_url: json['repositories_url'] as String ,
            permissions: Organization-programmatic-access-grant-requestPermissions.fromJson(json['permissions'] as Map<String, dynamic>) ,
            created_at: json['created_at'] as String ,
            token_id: (json['token_id'] as int).toInt() ,
            token_name: json['token_name'] as String ,
            token_expired: (json['token_expired'] as bool) ,
            token_expires_at: json['token_expires_at'] as String ,
            token_last_used_at: json['token_last_used_at'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-programmatic-access-grant-request? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-programmatic-access-grant-request.fromJson(json);
    }

    final int  id;
    final String  reason;
    final Simple-user  owner;
    final Organization-programmatic-access-grant-requestRepositorySelection  repository_selection;
    final String  repositories_url;
    final Organization-programmatic-access-grant-requestPermissions  permissions;
    final String  created_at;
    final int  token_id;
    final String  token_name;
    final bool  token_expired;
    final String  token_expires_at;
    final String  token_last_used_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'reason': reason,
            'owner': owner.toJson(),
            'repository_selection': repository_selection.toJson(),
            'repositories_url': repositories_url,
            'permissions': permissions.toJson(),
            'created_at': created_at,
            'token_id': token_id,
            'token_name': token_name,
            'token_expired': token_expired,
            'token_expires_at': token_expires_at,
            'token_last_used_at': token_last_used_at,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          reason,
          owner,
          repository_selection,
          repositories_url,
          permissions,
          created_at,
          token_id,
          token_name,
          token_expired,
          token_expires_at,
          token_last_used_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-programmatic-access-grant-request
            && id == other.id
            && reason == other.reason
            && owner == other.owner
            && repository_selection == other.repository_selection
            && repositories_url == other.repositories_url
            && permissions == other.permissions
            && created_at == other.created_at
            && token_id == other.token_id
            && token_name == other.token_name
            && token_expired == other.token_expired
            && token_expires_at == other.token_expires_at
            && token_last_used_at == other.token_last_used_at
        ;
    }
}
