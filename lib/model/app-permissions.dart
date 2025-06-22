import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class App-permissions {
    App-permissions(
        {  this.actions, this.administration, this.checks, this.codespaces, this.contents, this.dependabot_secrets, this.deployments, this.environments, this.issues, this.metadata, this.packages, this.pages, this.pull_requests, this.repository_custom_properties, this.repository_hooks, this.repository_projects, this.secret_scanning_alerts, this.secrets, this.security_events, this.single_file, this.statuses, this.vulnerability_alerts, this.workflows, this.members, this.organization_administration, this.organization_custom_roles, this.organization_custom_org_roles, this.organization_custom_properties, this.organization_copilot_seat_management, this.organization_announcement_banners, this.organization_events, this.organization_hooks, this.organization_personal_access_tokens, this.organization_personal_access_token_requests, this.organization_plan, this.organization_projects, this.organization_packages, this.organization_secrets, this.organization_self_hosted_runners, this.organization_user_blocking, this.team_discussions, this.email_addresses, this.followers, this.git_ssh_keys, this.gpg_keys, this.interaction_limits, this.profile, this.starring,
         }
    );

    factory App-permissions.fromJson(Map<String, dynamic>
        json) {
        return App-permissions(
            actions: App-permissionsActions.maybeFromJson(json['actions'] as String?) ,
            administration: App-permissionsAdministration.maybeFromJson(json['administration'] as String?) ,
            checks: App-permissionsChecks.maybeFromJson(json['checks'] as String?) ,
            codespaces: App-permissionsCodespaces.maybeFromJson(json['codespaces'] as String?) ,
            contents: App-permissionsContents.maybeFromJson(json['contents'] as String?) ,
            dependabot_secrets: App-permissionsDependabotSecrets.maybeFromJson(json['dependabot_secrets'] as String?) ,
            deployments: App-permissionsDeployments.maybeFromJson(json['deployments'] as String?) ,
            environments: App-permissionsEnvironments.maybeFromJson(json['environments'] as String?) ,
            issues: App-permissionsIssues.maybeFromJson(json['issues'] as String?) ,
            metadata: App-permissionsMetadata.maybeFromJson(json['metadata'] as String?) ,
            packages: App-permissionsPackages.maybeFromJson(json['packages'] as String?) ,
            pages: App-permissionsPages.maybeFromJson(json['pages'] as String?) ,
            pull_requests: App-permissionsPullRequests.maybeFromJson(json['pull_requests'] as String?) ,
            repository_custom_properties: App-permissionsRepositoryCustomProperties.maybeFromJson(json['repository_custom_properties'] as String?) ,
            repository_hooks: App-permissionsRepositoryHooks.maybeFromJson(json['repository_hooks'] as String?) ,
            repository_projects: App-permissionsRepositoryProjects.maybeFromJson(json['repository_projects'] as String?) ,
            secret_scanning_alerts: App-permissionsSecretScanningAlerts.maybeFromJson(json['secret_scanning_alerts'] as String?) ,
            secrets: App-permissionsSecrets.maybeFromJson(json['secrets'] as String?) ,
            security_events: App-permissionsSecurityEvents.maybeFromJson(json['security_events'] as String?) ,
            single_file: App-permissionsSingleFile.maybeFromJson(json['single_file'] as String?) ,
            statuses: App-permissionsStatuses.maybeFromJson(json['statuses'] as String?) ,
            vulnerability_alerts: App-permissionsVulnerabilityAlerts.maybeFromJson(json['vulnerability_alerts'] as String?) ,
            workflows: App-permissionsWorkflows.maybeFromJson(json['workflows'] as String?) ,
            members: App-permissionsMembers.maybeFromJson(json['members'] as String?) ,
            organization_administration: App-permissionsOrganizationAdministration.maybeFromJson(json['organization_administration'] as String?) ,
            organization_custom_roles: App-permissionsOrganizationCustomRoles.maybeFromJson(json['organization_custom_roles'] as String?) ,
            organization_custom_org_roles: App-permissionsOrganizationCustomOrgRoles.maybeFromJson(json['organization_custom_org_roles'] as String?) ,
            organization_custom_properties: App-permissionsOrganizationCustomProperties.maybeFromJson(json['organization_custom_properties'] as String?) ,
            organization_copilot_seat_management: App-permissionsOrganizationCopilotSeatManagement.maybeFromJson(json['organization_copilot_seat_management'] as String?) ,
            organization_announcement_banners: App-permissionsOrganizationAnnouncementBanners.maybeFromJson(json['organization_announcement_banners'] as String?) ,
            organization_events: App-permissionsOrganizationEvents.maybeFromJson(json['organization_events'] as String?) ,
            organization_hooks: App-permissionsOrganizationHooks.maybeFromJson(json['organization_hooks'] as String?) ,
            organization_personal_access_tokens: App-permissionsOrganizationPersonalAccessTokens.maybeFromJson(json['organization_personal_access_tokens'] as String?) ,
            organization_personal_access_token_requests: App-permissionsOrganizationPersonalAccessTokenRequests.maybeFromJson(json['organization_personal_access_token_requests'] as String?) ,
            organization_plan: App-permissionsOrganizationPlan.maybeFromJson(json['organization_plan'] as String?) ,
            organization_projects: App-permissionsOrganizationProjects.maybeFromJson(json['organization_projects'] as String?) ,
            organization_packages: App-permissionsOrganizationPackages.maybeFromJson(json['organization_packages'] as String?) ,
            organization_secrets: App-permissionsOrganizationSecrets.maybeFromJson(json['organization_secrets'] as String?) ,
            organization_self_hosted_runners: App-permissionsOrganizationSelfHostedRunners.maybeFromJson(json['organization_self_hosted_runners'] as String?) ,
            organization_user_blocking: App-permissionsOrganizationUserBlocking.maybeFromJson(json['organization_user_blocking'] as String?) ,
            team_discussions: App-permissionsTeamDiscussions.maybeFromJson(json['team_discussions'] as String?) ,
            email_addresses: App-permissionsEmailAddresses.maybeFromJson(json['email_addresses'] as String?) ,
            followers: App-permissionsFollowers.maybeFromJson(json['followers'] as String?) ,
            git_ssh_keys: App-permissionsGitSshKeys.maybeFromJson(json['git_ssh_keys'] as String?) ,
            gpg_keys: App-permissionsGpgKeys.maybeFromJson(json['gpg_keys'] as String?) ,
            interaction_limits: App-permissionsInteractionLimits.maybeFromJson(json['interaction_limits'] as String?) ,
            profile: App-permissionsProfile.maybeFromJson(json['profile'] as String?) ,
            starring: App-permissionsStarring.maybeFromJson(json['starring'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static App-permissions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return App-permissions.fromJson(json);
    }

    final  App-permissionsActions? actions;
    final  App-permissionsAdministration? administration;
    final  App-permissionsChecks? checks;
    final  App-permissionsCodespaces? codespaces;
    final  App-permissionsContents? contents;
    final  App-permissionsDependabotSecrets? dependabot_secrets;
    final  App-permissionsDeployments? deployments;
    final  App-permissionsEnvironments? environments;
    final  App-permissionsIssues? issues;
    final  App-permissionsMetadata? metadata;
    final  App-permissionsPackages? packages;
    final  App-permissionsPages? pages;
    final  App-permissionsPullRequests? pull_requests;
    final  App-permissionsRepositoryCustomProperties? repository_custom_properties;
    final  App-permissionsRepositoryHooks? repository_hooks;
    final  App-permissionsRepositoryProjects? repository_projects;
    final  App-permissionsSecretScanningAlerts? secret_scanning_alerts;
    final  App-permissionsSecrets? secrets;
    final  App-permissionsSecurityEvents? security_events;
    final  App-permissionsSingleFile? single_file;
    final  App-permissionsStatuses? statuses;
    final  App-permissionsVulnerabilityAlerts? vulnerability_alerts;
    final  App-permissionsWorkflows? workflows;
    final  App-permissionsMembers? members;
    final  App-permissionsOrganizationAdministration? organization_administration;
    final  App-permissionsOrganizationCustomRoles? organization_custom_roles;
    final  App-permissionsOrganizationCustomOrgRoles? organization_custom_org_roles;
    final  App-permissionsOrganizationCustomProperties? organization_custom_properties;
    final  App-permissionsOrganizationCopilotSeatManagement? organization_copilot_seat_management;
    final  App-permissionsOrganizationAnnouncementBanners? organization_announcement_banners;
    final  App-permissionsOrganizationEvents? organization_events;
    final  App-permissionsOrganizationHooks? organization_hooks;
    final  App-permissionsOrganizationPersonalAccessTokens? organization_personal_access_tokens;
    final  App-permissionsOrganizationPersonalAccessTokenRequests? organization_personal_access_token_requests;
    final  App-permissionsOrganizationPlan? organization_plan;
    final  App-permissionsOrganizationProjects? organization_projects;
    final  App-permissionsOrganizationPackages? organization_packages;
    final  App-permissionsOrganizationSecrets? organization_secrets;
    final  App-permissionsOrganizationSelfHostedRunners? organization_self_hosted_runners;
    final  App-permissionsOrganizationUserBlocking? organization_user_blocking;
    final  App-permissionsTeamDiscussions? team_discussions;
    final  App-permissionsEmailAddresses? email_addresses;
    final  App-permissionsFollowers? followers;
    final  App-permissionsGitSshKeys? git_ssh_keys;
    final  App-permissionsGpgKeys? gpg_keys;
    final  App-permissionsInteractionLimits? interaction_limits;
    final  App-permissionsProfile? profile;
    final  App-permissionsStarring? starring;


    Map<String, dynamic> toJson() {
        return {
            'actions': actions?.toJson(),
            'administration': administration?.toJson(),
            'checks': checks?.toJson(),
            'codespaces': codespaces?.toJson(),
            'contents': contents?.toJson(),
            'dependabot_secrets': dependabot_secrets?.toJson(),
            'deployments': deployments?.toJson(),
            'environments': environments?.toJson(),
            'issues': issues?.toJson(),
            'metadata': metadata?.toJson(),
            'packages': packages?.toJson(),
            'pages': pages?.toJson(),
            'pull_requests': pull_requests?.toJson(),
            'repository_custom_properties': repository_custom_properties?.toJson(),
            'repository_hooks': repository_hooks?.toJson(),
            'repository_projects': repository_projects?.toJson(),
            'secret_scanning_alerts': secret_scanning_alerts?.toJson(),
            'secrets': secrets?.toJson(),
            'security_events': security_events?.toJson(),
            'single_file': single_file?.toJson(),
            'statuses': statuses?.toJson(),
            'vulnerability_alerts': vulnerability_alerts?.toJson(),
            'workflows': workflows?.toJson(),
            'members': members?.toJson(),
            'organization_administration': organization_administration?.toJson(),
            'organization_custom_roles': organization_custom_roles?.toJson(),
            'organization_custom_org_roles': organization_custom_org_roles?.toJson(),
            'organization_custom_properties': organization_custom_properties?.toJson(),
            'organization_copilot_seat_management': organization_copilot_seat_management?.toJson(),
            'organization_announcement_banners': organization_announcement_banners?.toJson(),
            'organization_events': organization_events?.toJson(),
            'organization_hooks': organization_hooks?.toJson(),
            'organization_personal_access_tokens': organization_personal_access_tokens?.toJson(),
            'organization_personal_access_token_requests': organization_personal_access_token_requests?.toJson(),
            'organization_plan': organization_plan?.toJson(),
            'organization_projects': organization_projects?.toJson(),
            'organization_packages': organization_packages?.toJson(),
            'organization_secrets': organization_secrets?.toJson(),
            'organization_self_hosted_runners': organization_self_hosted_runners?.toJson(),
            'organization_user_blocking': organization_user_blocking?.toJson(),
            'team_discussions': team_discussions?.toJson(),
            'email_addresses': email_addresses?.toJson(),
            'followers': followers?.toJson(),
            'git_ssh_keys': git_ssh_keys?.toJson(),
            'gpg_keys': gpg_keys?.toJson(),
            'interaction_limits': interaction_limits?.toJson(),
            'profile': profile?.toJson(),
            'starring': starring?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          actions,
          administration,
          checks,
          codespaces,
          contents,
          dependabot_secrets,
          deployments,
          environments,
          issues,
          metadata,
          packages,
          pages,
          pull_requests,
          repository_custom_properties,
          repository_hooks,
          repository_projects,
          secret_scanning_alerts,
          secrets,
          security_events,
          single_file,
          statuses,
          vulnerability_alerts,
          workflows,
          members,
          organization_administration,
          organization_custom_roles,
          organization_custom_org_roles,
          organization_custom_properties,
          organization_copilot_seat_management,
          organization_announcement_banners,
          organization_events,
          organization_hooks,
          organization_personal_access_tokens,
          organization_personal_access_token_requests,
          organization_plan,
          organization_projects,
          organization_packages,
          organization_secrets,
          organization_self_hosted_runners,
          organization_user_blocking,
          team_discussions,
          email_addresses,
          followers,
          git_ssh_keys,
          gpg_keys,
          interaction_limits,
          profile,
          starring,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is App-permissions
            && actions == other.actions
            && administration == other.administration
            && checks == other.checks
            && codespaces == other.codespaces
            && contents == other.contents
            && dependabot_secrets == other.dependabot_secrets
            && deployments == other.deployments
            && environments == other.environments
            && issues == other.issues
            && metadata == other.metadata
            && packages == other.packages
            && pages == other.pages
            && pull_requests == other.pull_requests
            && repository_custom_properties == other.repository_custom_properties
            && repository_hooks == other.repository_hooks
            && repository_projects == other.repository_projects
            && secret_scanning_alerts == other.secret_scanning_alerts
            && secrets == other.secrets
            && security_events == other.security_events
            && single_file == other.single_file
            && statuses == other.statuses
            && vulnerability_alerts == other.vulnerability_alerts
            && workflows == other.workflows
            && members == other.members
            && organization_administration == other.organization_administration
            && organization_custom_roles == other.organization_custom_roles
            && organization_custom_org_roles == other.organization_custom_org_roles
            && organization_custom_properties == other.organization_custom_properties
            && organization_copilot_seat_management == other.organization_copilot_seat_management
            && organization_announcement_banners == other.organization_announcement_banners
            && organization_events == other.organization_events
            && organization_hooks == other.organization_hooks
            && organization_personal_access_tokens == other.organization_personal_access_tokens
            && organization_personal_access_token_requests == other.organization_personal_access_token_requests
            && organization_plan == other.organization_plan
            && organization_projects == other.organization_projects
            && organization_packages == other.organization_packages
            && organization_secrets == other.organization_secrets
            && organization_self_hosted_runners == other.organization_self_hosted_runners
            && organization_user_blocking == other.organization_user_blocking
            && team_discussions == other.team_discussions
            && email_addresses == other.email_addresses
            && followers == other.followers
            && git_ssh_keys == other.git_ssh_keys
            && gpg_keys == other.gpg_keys
            && interaction_limits == other.interaction_limits
            && profile == other.profile
            && starring == other.starring
        ;
    }
}
