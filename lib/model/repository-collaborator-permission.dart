import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-collaborator-permission.dart';
import 'package:github/model/nullable-collaborator.dart';
import 'package:github/model/nullable-collaborator_permissions.dart';
import 'package:github/model/repository-collaborator-permission.dart';
import 'package:github/model/nullable-collaborator.dart';
import 'package:github/model/nullable-collaborator_permissions.dart';
@immutable
class Repository-collaborator-permission {
    Repository-collaborator-permission(
        { required this.permission,required this.role_name,required this.user,
         }
    );

    factory Repository-collaborator-permission.fromJson(Map<String, dynamic>
        json) {
        return Repository-collaborator-permission(
            permission: json['permission'] as String ,
            role_name: json['role_name'] as String ,
            user: Nullable-collaborator.fromJson(json['user'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-collaborator-permission? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-collaborator-permission.fromJson(json);
    }

    final String  permission;
    final String  role_name;
    final Nullable-collaborator  user;


    Map<String, dynamic> toJson() {
        return {
            'permission': permission,
            'role_name': role_name,
            'user': user.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          permission,
          role_name,
          user,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-collaborator-permission
            && permission == other.permission
            && role_name == other.role_name
            && user == other.user
        ;
    }
}
