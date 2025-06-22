import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/project-collaborator-permission.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/project-collaborator-permission.dart';
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Project-collaborator-permission {
    Project-collaborator-permission(
        { required this.permission,required this.user,
         }
    );

    factory Project-collaborator-permission.fromJson(Map<String, dynamic>
        json) {
        return Project-collaborator-permission(
            permission: json['permission'] as String ,
            user: Nullable-simple-user.fromJson(json['user'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Project-collaborator-permission? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Project-collaborator-permission.fromJson(json);
    }

    final String  permission;
    final Nullable-simple-user  user;


    Map<String, dynamic> toJson() {
        return {
            'permission': permission,
            'user': user.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          permission,
          user,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Project-collaborator-permission
            && permission == other.permission
            && user == other.user
        ;
    }
}
