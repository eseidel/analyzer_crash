import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-project_permissions.dart';
import 'package:github/model/team-project_permissions.dart';
@immutable
class Team-projectPermissions {
    Team-projectPermissions(
        { required this.read,required this.write,required this.admin,
         }
    );

    factory Team-projectPermissions.fromJson(Map<String, dynamic>
        json) {
        return Team-projectPermissions(
            read: (json['read'] as bool) ,
            write: (json['write'] as bool) ,
            admin: (json['admin'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-projectPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-projectPermissions.fromJson(json);
    }

    final bool  read;
    final bool  write;
    final bool  admin;


    Map<String, dynamic> toJson() {
        return {
            'read': read,
            'write': write,
            'admin': admin,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          read,
          write,
          admin,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-projectPermissions
            && read == other.read
            && write == other.write
            && admin == other.admin
        ;
    }
}
