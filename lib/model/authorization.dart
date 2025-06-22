import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/authorization.dart';
import 'package:github/model/authorization_app.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-scoped-installation.dart';
import 'package:github/model/app-permissions.dart';
import 'package:github/model/app-permissions_actions.dart';
import 'package:github/model/app-permissions_administration.dart';
import 'package:github/model/app-permissions_checks.dart';
import 'package:github/model/app-permissions_codespaces.dart';
import 'package:github/model/app-permissions_contents.dart';
import 'package:github/model/app-permissions_dependabot_secrets.dart';
import 'package:github/model/app-permissions_deployments.dart';
import 'package:github/model/app-permissions_environments.dart';
import 'package:github/model/app-permissions_issues.dart';
import 'package:github/model/app-permissions_metadata.dart';
import 'package:github/model/app-permissions_packages.dart';
import 'package:github/model/app-permissions_pages.dart';
import 'package:github/model/app-permissions_pull_requests.dart';
import 'package:github/model/app-permissions_repository_custom_properties.dart';
import 'package:github/model/app-permissions_repository_hooks.dart';
import 'package:github/model/app-permissions_repository_projects.dart';
import 'package:github/model/app-permissions_secret_scanning_alerts.dart';
import 'package:github/model/app-permissions_secrets.dart';
import 'package:github/model/app-permissions_security_events.dart';
import 'package:github/model/app-permissions_single_file.dart';
import 'package:github/model/app-permissions_statuses.dart';
import 'package:github/model/app-permissions_vulnerability_alerts.dart';
import 'package:github/model/app-permissions_workflows.dart';
import 'package:github/model/app-permissions_members.dart';
import 'package:github/model/app-permissions_organization_administration.dart';
import 'package:github/model/app-permissions_organization_custom_roles.dart';
import 'package:github/model/app-permissions_organization_custom_org_roles.dart';
import 'package:github/model/app-permissions_organization_custom_properties.dart';
import 'package:github/model/app-permissions_organization_copilot_seat_management.dart';
import 'package:github/model/app-permissions_organization_announcement_banners.dart';
import 'package:github/model/app-permissions_organization_events.dart';
import 'package:github/model/app-permissions_organization_hooks.dart';
import 'package:github/model/app-permissions_organization_personal_access_tokens.dart';
import 'package:github/model/app-permissions_organization_personal_access_token_requests.dart';
import 'package:github/model/app-permissions_organization_plan.dart';
import 'package:github/model/app-permissions_organization_projects.dart';
import 'package:github/model/app-permissions_organization_packages.dart';
import 'package:github/model/app-permissions_organization_secrets.dart';
import 'package:github/model/app-permissions_organization_self_hosted_runners.dart';
import 'package:github/model/app-permissions_organization_user_blocking.dart';
import 'package:github/model/app-permissions_team_discussions.dart';
import 'package:github/model/app-permissions_email_addresses.dart';
import 'package:github/model/app-permissions_followers.dart';
import 'package:github/model/app-permissions_git_ssh_keys.dart';
import 'package:github/model/app-permissions_gpg_keys.dart';
import 'package:github/model/app-permissions_interaction_limits.dart';
import 'package:github/model/app-permissions_profile.dart';
import 'package:github/model/app-permissions_starring.dart';
import 'package:github/model/nullable-scoped-installation_repository_selection.dart';
import 'package:github/model/simple-user.dart';
@immutable
class Authorization {
    Authorization(
        { required this.id,required this.url, this.scopes = const [],required this.token,required this.token_last_eight,required this.hashed_token,required this.app,required this.note,required this.note_url,required this.updated_at,required this.created_at,required this.fingerprint, this.user, this.installation,required this.expires_at,
         }
    );

    factory Authorization.fromJson(Map<String, dynamic>
        json) {
        return Authorization(
            id: (json['id'] as int).toInt() ,
            url: json['url'] as String ,
            scopes: (json['scopes'] as List).cast<String>() ,
            token: json['token'] as String ,
            token_last_eight: json['token_last_eight'] as String ,
            hashed_token: json['hashed_token'] as String ,
            app: AuthorizationApp.fromJson(json['app'] as Map<String, dynamic>) ,
            note: json['note'] as String ,
            note_url: json['note_url'] as String ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            created_at: DateTime.parse(json['created_at'] as String),
            fingerprint: json['fingerprint'] as String ,
            user: Nullable-simple-user.maybeFromJson(json['user'] as Map<String, dynamic>?) ,
            installation: Nullable-scoped-installation.maybeFromJson(json['installation'] as Map<String, dynamic>?) ,
            expires_at: DateTime.parse(json['expires_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Authorization? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Authorization.fromJson(json);
    }

    final int  id;
    final String  url;
    final List<String>  scopes;
    final String  token;
    final String  token_last_eight;
    final String  hashed_token;
    final AuthorizationApp  app;
    final String  note;
    final String  note_url;
    final DateTime  updated_at;
    final DateTime  created_at;
    final String  fingerprint;
    final  Nullable-simple-user? user;
    final  Nullable-scoped-installation? installation;
    final DateTime  expires_at;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'url': url,
            'scopes': scopes,
            'token': token,
            'token_last_eight': token_last_eight,
            'hashed_token': hashed_token,
            'app': app.toJson(),
            'note': note,
            'note_url': note_url,
            'updated_at': updated_at.toIso8601String(),
            'created_at': created_at.toIso8601String(),
            'fingerprint': fingerprint,
            'user': user?.toJson(),
            'installation': installation?.toJson(),
            'expires_at': expires_at.toIso8601String(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          url,
          scopes,
          token,
          token_last_eight,
          hashed_token,
          app,
          note,
          note_url,
          updated_at,
          created_at,
          fingerprint,
          user,
          installation,
          expires_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Authorization
            && id == other.id
            && url == other.url
            && listsEqual(scopes, other.scopes)
            && token == other.token
            && token_last_eight == other.token_last_eight
            && hashed_token == other.hashed_token
            && app == other.app
            && note == other.note
            && note_url == other.note_url
            && updated_at == other.updated_at
            && created_at == other.created_at
            && fingerprint == other.fingerprint
            && user == other.user
            && installation == other.installation
            && expires_at == other.expires_at
        ;
    }
}
