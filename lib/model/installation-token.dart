import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/installation-token.dart';
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
import 'package:github/model/installation-token_repository_selection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
import 'package:github/model/installation-token.dart';
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
import 'package:github/model/installation-token_repository_selection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/repository_permissions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/repository_squash_merge_commit_title.dart';
import 'package:github/model/repository_squash_merge_commit_message.dart';
import 'package:github/model/repository_merge_commit_title.dart';
import 'package:github/model/repository_merge_commit_message.dart';
import 'package:github/model/repository_code_search_index_status.dart';
@immutable
class Installation-token {
    Installation-token(
        { required this.token,required this.expires_at, this.permissions, this.repository_selection, this.repositories = const [], this.single_file, this.has_multiple_single_files, this.single_file_paths = const [],
         }
    );

    factory Installation-token.fromJson(Map<String, dynamic>
        json) {
        return Installation-token(
            token: json['token'] as String ,
            expires_at: json['expires_at'] as String ,
            permissions: App-permissions.maybeFromJson(json['permissions'] as Map<String, dynamic>?) ,
            repository_selection: Installation-tokenRepositorySelection.maybeFromJson(json['repository_selection'] as String?) ,
            repositories: (json['repositories'] as List?)?.map<Repository>((e) => Repository.fromJson(e as Map<String, dynamic>) ).toList() ,
            single_file: json['single_file'] as String? ,
            has_multiple_single_files: (json['has_multiple_single_files'] as bool?) ,
            single_file_paths: (json['single_file_paths'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Installation-token? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Installation-token.fromJson(json);
    }

    final String  token;
    final String  expires_at;
    final  App-permissions? permissions;
    final  Installation-tokenRepositorySelection? repository_selection;
    final  List<Repository>? repositories;
    final  String? single_file;
    final  bool? has_multiple_single_files;
    final  List<String>? single_file_paths;


    Map<String, dynamic> toJson() {
        return {
            'token': token,
            'expires_at': expires_at,
            'permissions': permissions?.toJson(),
            'repository_selection': repository_selection?.toJson(),
            'repositories': repositories?.map((e) => e.toJson()).toList(),
            'single_file': single_file,
            'has_multiple_single_files': has_multiple_single_files,
            'single_file_paths': single_file_paths,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          token,
          expires_at,
          permissions,
          repository_selection,
          repositories,
          single_file,
          has_multiple_single_files,
          single_file_paths,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Installation-token
            && token == other.token
            && expires_at == other.expires_at
            && permissions == other.permissions
            && repository_selection == other.repository_selection
            && listsEqual(repositories, other.repositories)
            && single_file == other.single_file
            && has_multiple_single_files == other.has_multiple_single_files
            && listsEqual(single_file_paths, other.single_file_paths)
        ;
    }
}
