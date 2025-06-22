import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
import 'package:github/model/repository-invitation.dart';
import 'package:github/model/minimal-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/minimal-repository_permissions.dart';
import 'package:github/model/code-of-conduct.dart';
import 'package:github/model/minimal-repository_license.dart';
import 'package:github/model/security-and-analysis.dart';
import 'package:github/model/security-and-analysis_advanced_security.dart';
import 'package:github/model/security-and-analysis_advanced_security_status.dart';
import 'package:github/model/security-and-analysis_code_security.dart';
import 'package:github/model/security-and-analysis_code_security_status.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates.dart';
import 'package:github/model/security-and-analysis_dependabot_security_updates_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning.dart';
import 'package:github/model/security-and-analysis_secret_scanning_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_push_protection_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns.dart';
import 'package:github/model/security-and-analysis_secret_scanning_non_provider_patterns_status.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection.dart';
import 'package:github/model/security-and-analysis_secret_scanning_ai_detection_status.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/repository-invitation_permissions.dart';
@immutable
class Repository-invitation {
    Repository-invitation(
        { required this.id,required this.repository,required this.invitee,required this.inviter,required this.permissions,required this.created_at, this.expired,required this.url,required this.html_url,required this.node_id,
         }
    );

    factory Repository-invitation.fromJson(Map<String, dynamic>
        json) {
        return Repository-invitation(
            id: (json['id'] as int).toInt() ,
            repository: Minimal-repository.fromJson(json['repository'] as Map<String, dynamic>) ,
            invitee: Nullable-simple-user.fromJson(json['invitee'] as Map<String, dynamic>) ,
            inviter: Nullable-simple-user.fromJson(json['inviter'] as Map<String, dynamic>) ,
            permissions: Repository-invitationPermissions.fromJson(json['permissions'] as String) ,
            created_at: DateTime.parse(json['created_at'] as String),
            expired: (json['expired'] as bool?) ,
            url: json['url'] as String ,
            html_url: json['html_url'] as String ,
            node_id: json['node_id'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repository-invitation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repository-invitation.fromJson(json);
    }

    final int  id;
    final Minimal-repository  repository;
    final Nullable-simple-user  invitee;
    final Nullable-simple-user  inviter;
    final Repository-invitationPermissions  permissions;
    final DateTime  created_at;
    final  bool? expired;
    final String  url;
    final String  html_url;
    final String  node_id;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'repository': repository.toJson(),
            'invitee': invitee.toJson(),
            'inviter': inviter.toJson(),
            'permissions': permissions.toJson(),
            'created_at': created_at.toIso8601String(),
            'expired': expired,
            'url': url,
            'html_url': html_url,
            'node_id': node_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          repository,
          invitee,
          inviter,
          permissions,
          created_at,
          expired,
          url,
          html_url,
          node_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repository-invitation
            && id == other.id
            && repository == other.repository
            && invitee == other.invitee
            && inviter == other.inviter
            && permissions == other.permissions
            && created_at == other.created_at
            && expired == other.expired
            && url == other.url
            && html_url == other.html_url
            && node_id == other.node_id
        ;
    }
}
