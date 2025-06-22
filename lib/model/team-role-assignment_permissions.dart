import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
import 'package:github/model/team-role-assignment_permissions.dart';
@immutable
class Team-role-assignmentPermissions {
    Team-role-assignmentPermissions(
        { required this.pull,required this.triage,required this.push,required this.maintain,required this.admin,
         }
    );

    factory Team-role-assignmentPermissions.fromJson(Map<String, dynamic>
        json) {
        return Team-role-assignmentPermissions(
            pull: (json['pull'] as bool) ,
            triage: (json['triage'] as bool) ,
            push: (json['push'] as bool) ,
            maintain: (json['maintain'] as bool) ,
            admin: (json['admin'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-role-assignmentPermissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-role-assignmentPermissions.fromJson(json);
    }

    final bool  pull;
    final bool  triage;
    final bool  push;
    final bool  maintain;
    final bool  admin;


    Map<String, dynamic> toJson() {
        return {
            'pull': pull,
            'triage': triage,
            'push': push,
            'maintain': maintain,
            'admin': admin,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          pull,
          triage,
          push,
          maintain,
          admin,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-role-assignmentPermissions
            && pull == other.pull
            && triage == other.triage
            && push == other.push
            && maintain == other.maintain
            && admin == other.admin
        ;
    }
}
