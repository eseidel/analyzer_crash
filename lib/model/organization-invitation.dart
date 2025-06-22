import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/organization-invitation.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Organization-invitation {
    Organization-invitation(
        { required this.id,required this.login,required this.email,required this.role,required this.created_at, this.failed_at, this.failed_reason,required this.inviter,required this.team_count,required this.node_id,required this.invitation_teams_url, this.invitation_source,
         }
    );

    factory Organization-invitation.fromJson(Map<String, dynamic>
        json) {
        return Organization-invitation(
            id: (json['id'] as int).toInt() ,
            login: json['login'] as String ,
            email: json['email'] as String ,
            role: json['role'] as String ,
            created_at: json['created_at'] as String ,
            failed_at: json['failed_at'] as String? ,
            failed_reason: json['failed_reason'] as String? ,
            inviter: Simple-user.fromJson(json['inviter'] as Map<String, dynamic>) ,
            team_count: (json['team_count'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            invitation_teams_url: json['invitation_teams_url'] as String ,
            invitation_source: json['invitation_source'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-invitation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-invitation.fromJson(json);
    }

    final int  id;
    final String  login;
    final String  email;
    final String  role;
    final String  created_at;
    final  String? failed_at;
    final  String? failed_reason;
    final Simple-user  inviter;
    final int  team_count;
    final String  node_id;
    final String  invitation_teams_url;
    final  String? invitation_source;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'login': login,
            'email': email,
            'role': role,
            'created_at': created_at,
            'failed_at': failed_at,
            'failed_reason': failed_reason,
            'inviter': inviter.toJson(),
            'team_count': team_count,
            'node_id': node_id,
            'invitation_teams_url': invitation_teams_url,
            'invitation_source': invitation_source,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          login,
          email,
          role,
          created_at,
          failed_at,
          failed_reason,
          inviter,
          team_count,
          node_id,
          invitation_teams_url,
          invitation_source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-invitation
            && id == other.id
            && login == other.login
            && email == other.email
            && role == other.role
            && created_at == other.created_at
            && failed_at == other.failed_at
            && failed_reason == other.failed_reason
            && inviter == other.inviter
            && team_count == other.team_count
            && node_id == other.node_id
            && invitation_teams_url == other.invitation_teams_url
            && invitation_source == other.invitation_source
        ;
    }
}
