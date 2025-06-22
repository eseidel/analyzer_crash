import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
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
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/installation.dart';
import 'package:github/model/installation_account.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/installation_repository_selection.dart';
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
import 'package:github/model/nullable-simple-user.dart';
@immutable
class Installation {
    Installation(
        { required this.id,required this.account,required this.repository_selection,required this.access_tokens_url,required this.repositories_url,required this.html_url,required this.app_id,required this.target_id,required this.target_type,required this.permissions, this.events = const [],required this.created_at,required this.updated_at,required this.single_file_name, this.has_multiple_single_files, this.single_file_paths = const [],required this.app_slug,required this.suspended_by,required this.suspended_at, this.contact_email,
         }
    );

    factory Installation.fromJson(Map<String, dynamic>
        json) {
        return Installation(
            id: (json['id'] as int).toInt() ,
            account: InstallationAccount.fromJson(json['account'] as dynamic),
            repository_selection: InstallationRepositorySelection.fromJson(json['repository_selection'] as String) ,
            access_tokens_url: json['access_tokens_url'] as String ,
            repositories_url: json['repositories_url'] as String ,
            html_url: json['html_url'] as String ,
            app_id: (json['app_id'] as int).toInt() ,
            target_id: (json['target_id'] as int).toInt() ,
            target_type: json['target_type'] as String ,
            permissions: App-permissions.fromJson(json['permissions'] as Map<String, dynamic>) ,
            events: (json['events'] as List).cast<String>() ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            single_file_name: json['single_file_name'] as String ,
            has_multiple_single_files: (json['has_multiple_single_files'] as bool?) ,
            single_file_paths: (json['single_file_paths'] as List?)?.cast<String>() ,
            app_slug: json['app_slug'] as String ,
            suspended_by: Nullable-simple-user.fromJson(json['suspended_by'] as Map<String, dynamic>) ,
            suspended_at: DateTime.parse(json['suspended_at'] as String),
            contact_email: json['contact_email'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Installation? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Installation.fromJson(json);
    }

    final int  id;
    final InstallationAccount  account;
    final InstallationRepositorySelection  repository_selection;
    final String  access_tokens_url;
    final String  repositories_url;
    final String  html_url;
    final int  app_id;
    final int  target_id;
    final String  target_type;
    final App-permissions  permissions;
    final List<String>  events;
    final DateTime  created_at;
    final DateTime  updated_at;
    final String  single_file_name;
    final  bool? has_multiple_single_files;
    final  List<String>? single_file_paths;
    final String  app_slug;
    final Nullable-simple-user  suspended_by;
    final DateTime  suspended_at;
    final  String? contact_email;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'account': account.toJson(),
            'repository_selection': repository_selection.toJson(),
            'access_tokens_url': access_tokens_url,
            'repositories_url': repositories_url,
            'html_url': html_url,
            'app_id': app_id,
            'target_id': target_id,
            'target_type': target_type,
            'permissions': permissions.toJson(),
            'events': events,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'single_file_name': single_file_name,
            'has_multiple_single_files': has_multiple_single_files,
            'single_file_paths': single_file_paths,
            'app_slug': app_slug,
            'suspended_by': suspended_by.toJson(),
            'suspended_at': suspended_at.toIso8601String(),
            'contact_email': contact_email,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          account,
          repository_selection,
          access_tokens_url,
          repositories_url,
          html_url,
          app_id,
          target_id,
          target_type,
          permissions,
          events,
          created_at,
          updated_at,
          single_file_name,
          has_multiple_single_files,
          single_file_paths,
          app_slug,
          suspended_by,
          suspended_at,
          contact_email,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Installation
            && id == other.id
            && account == other.account
            && repository_selection == other.repository_selection
            && access_tokens_url == other.access_tokens_url
            && repositories_url == other.repositories_url
            && html_url == other.html_url
            && app_id == other.app_id
            && target_id == other.target_id
            && target_type == other.target_type
            && permissions == other.permissions
            && listsEqual(events, other.events)
            && created_at == other.created_at
            && updated_at == other.updated_at
            && single_file_name == other.single_file_name
            && has_multiple_single_files == other.has_multiple_single_files
            && listsEqual(single_file_paths, other.single_file_paths)
            && app_slug == other.app_slug
            && suspended_by == other.suspended_by
            && suspended_at == other.suspended_at
            && contact_email == other.contact_email
        ;
    }
}
