import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/organization-full.dart';
import 'package:github/model/organization-full_plan.dart';
@immutable
class Organization-full {
    Organization-full(
        { required this.login,required this.id,required this.node_id,required this.url,required this.repos_url,required this.events_url,required this.hooks_url,required this.issues_url,required this.members_url,required this.public_members_url,required this.avatar_url,required this.description, this.name, this.company, this.blog, this.location, this.email, this.twitter_username, this.is_verified,required this.has_organization_projects,required this.has_repository_projects,required this.public_repos,required this.public_gists,required this.followers,required this.following,required this.html_url,required this.type, this.total_private_repos, this.owned_private_repos, this.private_gists, this.disk_usage, this.collaborators, this.billing_email, this.plan, this.default_repository_permission, this.default_repository_branch, this.members_can_create_repositories, this.two_factor_requirement_enabled, this.members_allowed_repository_creation_type, this.members_can_create_public_repositories, this.members_can_create_private_repositories, this.members_can_create_internal_repositories, this.members_can_create_pages, this.members_can_create_public_pages, this.members_can_create_private_pages, this.members_can_delete_repositories, this.members_can_change_repo_visibility, this.members_can_invite_outside_collaborators, this.members_can_delete_issues, this.display_commenter_full_name_setting_enabled, this.readers_can_create_discussions, this.members_can_create_teams, this.members_can_view_dependency_insights, this.members_can_fork_private_repositories, this.web_commit_signoff_required, this.advanced_security_enabled_for_new_repositories, this.dependabot_alerts_enabled_for_new_repositories, this.dependabot_security_updates_enabled_for_new_repositories, this.dependency_graph_enabled_for_new_repositories, this.secret_scanning_enabled_for_new_repositories, this.secret_scanning_push_protection_enabled_for_new_repositories, this.secret_scanning_push_protection_custom_link_enabled, this.secret_scanning_push_protection_custom_link,required this.created_at,required this.updated_at,required this.archived_at, this.deploy_keys_enabled_for_repositories,
         }
    );

    factory Organization-full.fromJson(Map<String, dynamic>
        json) {
        return Organization-full(
            login: json['login'] as String ,
            id: (json['id'] as int).toInt() ,
            node_id: json['node_id'] as String ,
            url: json['url'] as String ,
            repos_url: json['repos_url'] as String ,
            events_url: json['events_url'] as String ,
            hooks_url: json['hooks_url'] as String ,
            issues_url: json['issues_url'] as String ,
            members_url: json['members_url'] as String ,
            public_members_url: json['public_members_url'] as String ,
            avatar_url: json['avatar_url'] as String ,
            description: json['description'] as String ,
            name: json['name'] as String? ,
            company: json['company'] as String? ,
            blog: json['blog'] as String? ,
            location: json['location'] as String? ,
            email: json['email'] as String? ,
            twitter_username: json['twitter_username'] as String? ,
            is_verified: (json['is_verified'] as bool?) ,
            has_organization_projects: (json['has_organization_projects'] as bool) ,
            has_repository_projects: (json['has_repository_projects'] as bool) ,
            public_repos: (json['public_repos'] as int).toInt() ,
            public_gists: (json['public_gists'] as int).toInt() ,
            followers: (json['followers'] as int).toInt() ,
            following: (json['following'] as int).toInt() ,
            html_url: json['html_url'] as String ,
            type: json['type'] as String ,
            total_private_repos: (json['total_private_repos'] as int?).toInt() ,
            owned_private_repos: (json['owned_private_repos'] as int?).toInt() ,
            private_gists: (json['private_gists'] as int?).toInt() ,
            disk_usage: (json['disk_usage'] as int?).toInt() ,
            collaborators: (json['collaborators'] as int?).toInt() ,
            billing_email: json['billing_email'] as String? ,
            plan: Organization-fullPlan.maybeFromJson(json['plan'] as Map<String, dynamic>?) ,
            default_repository_permission: json['default_repository_permission'] as String? ,
            default_repository_branch: json['default_repository_branch'] as String? ,
            members_can_create_repositories: (json['members_can_create_repositories'] as bool?) ,
            two_factor_requirement_enabled: (json['two_factor_requirement_enabled'] as bool?) ,
            members_allowed_repository_creation_type: json['members_allowed_repository_creation_type'] as String? ,
            members_can_create_public_repositories: (json['members_can_create_public_repositories'] as bool?) ,
            members_can_create_private_repositories: (json['members_can_create_private_repositories'] as bool?) ,
            members_can_create_internal_repositories: (json['members_can_create_internal_repositories'] as bool?) ,
            members_can_create_pages: (json['members_can_create_pages'] as bool?) ,
            members_can_create_public_pages: (json['members_can_create_public_pages'] as bool?) ,
            members_can_create_private_pages: (json['members_can_create_private_pages'] as bool?) ,
            members_can_delete_repositories: (json['members_can_delete_repositories'] as bool?) ,
            members_can_change_repo_visibility: (json['members_can_change_repo_visibility'] as bool?) ,
            members_can_invite_outside_collaborators: (json['members_can_invite_outside_collaborators'] as bool?) ,
            members_can_delete_issues: (json['members_can_delete_issues'] as bool?) ,
            display_commenter_full_name_setting_enabled: (json['display_commenter_full_name_setting_enabled'] as bool?) ,
            readers_can_create_discussions: (json['readers_can_create_discussions'] as bool?) ,
            members_can_create_teams: (json['members_can_create_teams'] as bool?) ,
            members_can_view_dependency_insights: (json['members_can_view_dependency_insights'] as bool?) ,
            members_can_fork_private_repositories: (json['members_can_fork_private_repositories'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
            advanced_security_enabled_for_new_repositories: (json['advanced_security_enabled_for_new_repositories'] as bool?) ,
            dependabot_alerts_enabled_for_new_repositories: (json['dependabot_alerts_enabled_for_new_repositories'] as bool?) ,
            dependabot_security_updates_enabled_for_new_repositories: (json['dependabot_security_updates_enabled_for_new_repositories'] as bool?) ,
            dependency_graph_enabled_for_new_repositories: (json['dependency_graph_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_enabled_for_new_repositories: (json['secret_scanning_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_push_protection_enabled_for_new_repositories: (json['secret_scanning_push_protection_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_push_protection_custom_link_enabled: (json['secret_scanning_push_protection_custom_link_enabled'] as bool?) ,
            secret_scanning_push_protection_custom_link: json['secret_scanning_push_protection_custom_link'] as String? ,
            created_at: DateTime.parse(json['created_at'] as String),
            updated_at: DateTime.parse(json['updated_at'] as String),
            archived_at: DateTime.parse(json['archived_at'] as String),
            deploy_keys_enabled_for_repositories: (json['deploy_keys_enabled_for_repositories'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-full? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-full.fromJson(json);
    }

    final String  login;
    final int  id;
    final String  node_id;
    final String  url;
    final String  repos_url;
    final String  events_url;
    final String  hooks_url;
    final String  issues_url;
    final String  members_url;
    final String  public_members_url;
    final String  avatar_url;
    final String  description;
    final  String? name;
    final  String? company;
    final  String? blog;
    final  String? location;
    final  String? email;
    final  String? twitter_username;
    final  bool? is_verified;
    final bool  has_organization_projects;
    final bool  has_repository_projects;
    final int  public_repos;
    final int  public_gists;
    final int  followers;
    final int  following;
    final String  html_url;
    final String  type;
    final  int? total_private_repos;
    final  int? owned_private_repos;
    final  int? private_gists;
    final  int? disk_usage;
    final  int? collaborators;
    final  String? billing_email;
    final  Organization-fullPlan? plan;
    final  String? default_repository_permission;
    final  String? default_repository_branch;
    final  bool? members_can_create_repositories;
    final  bool? two_factor_requirement_enabled;
    final  String? members_allowed_repository_creation_type;
    final  bool? members_can_create_public_repositories;
    final  bool? members_can_create_private_repositories;
    final  bool? members_can_create_internal_repositories;
    final  bool? members_can_create_pages;
    final  bool? members_can_create_public_pages;
    final  bool? members_can_create_private_pages;
    final  bool? members_can_delete_repositories;
    final  bool? members_can_change_repo_visibility;
    final  bool? members_can_invite_outside_collaborators;
    final  bool? members_can_delete_issues;
    final  bool? display_commenter_full_name_setting_enabled;
    final  bool? readers_can_create_discussions;
    final  bool? members_can_create_teams;
    final  bool? members_can_view_dependency_insights;
    final  bool? members_can_fork_private_repositories;
    final  bool? web_commit_signoff_required;
    final  bool? advanced_security_enabled_for_new_repositories;
    final  bool? dependabot_alerts_enabled_for_new_repositories;
    final  bool? dependabot_security_updates_enabled_for_new_repositories;
    final  bool? dependency_graph_enabled_for_new_repositories;
    final  bool? secret_scanning_enabled_for_new_repositories;
    final  bool? secret_scanning_push_protection_enabled_for_new_repositories;
    final  bool? secret_scanning_push_protection_custom_link_enabled;
    final  String? secret_scanning_push_protection_custom_link;
    final DateTime  created_at;
    final DateTime  updated_at;
    final DateTime  archived_at;
    final  bool? deploy_keys_enabled_for_repositories;


    Map<String, dynamic> toJson() {
        return {
            'login': login,
            'id': id,
            'node_id': node_id,
            'url': url,
            'repos_url': repos_url,
            'events_url': events_url,
            'hooks_url': hooks_url,
            'issues_url': issues_url,
            'members_url': members_url,
            'public_members_url': public_members_url,
            'avatar_url': avatar_url,
            'description': description,
            'name': name,
            'company': company,
            'blog': blog,
            'location': location,
            'email': email,
            'twitter_username': twitter_username,
            'is_verified': is_verified,
            'has_organization_projects': has_organization_projects,
            'has_repository_projects': has_repository_projects,
            'public_repos': public_repos,
            'public_gists': public_gists,
            'followers': followers,
            'following': following,
            'html_url': html_url,
            'type': type,
            'total_private_repos': total_private_repos,
            'owned_private_repos': owned_private_repos,
            'private_gists': private_gists,
            'disk_usage': disk_usage,
            'collaborators': collaborators,
            'billing_email': billing_email,
            'plan': plan?.toJson(),
            'default_repository_permission': default_repository_permission,
            'default_repository_branch': default_repository_branch,
            'members_can_create_repositories': members_can_create_repositories,
            'two_factor_requirement_enabled': two_factor_requirement_enabled,
            'members_allowed_repository_creation_type': members_allowed_repository_creation_type,
            'members_can_create_public_repositories': members_can_create_public_repositories,
            'members_can_create_private_repositories': members_can_create_private_repositories,
            'members_can_create_internal_repositories': members_can_create_internal_repositories,
            'members_can_create_pages': members_can_create_pages,
            'members_can_create_public_pages': members_can_create_public_pages,
            'members_can_create_private_pages': members_can_create_private_pages,
            'members_can_delete_repositories': members_can_delete_repositories,
            'members_can_change_repo_visibility': members_can_change_repo_visibility,
            'members_can_invite_outside_collaborators': members_can_invite_outside_collaborators,
            'members_can_delete_issues': members_can_delete_issues,
            'display_commenter_full_name_setting_enabled': display_commenter_full_name_setting_enabled,
            'readers_can_create_discussions': readers_can_create_discussions,
            'members_can_create_teams': members_can_create_teams,
            'members_can_view_dependency_insights': members_can_view_dependency_insights,
            'members_can_fork_private_repositories': members_can_fork_private_repositories,
            'web_commit_signoff_required': web_commit_signoff_required,
            'advanced_security_enabled_for_new_repositories': advanced_security_enabled_for_new_repositories,
            'dependabot_alerts_enabled_for_new_repositories': dependabot_alerts_enabled_for_new_repositories,
            'dependabot_security_updates_enabled_for_new_repositories': dependabot_security_updates_enabled_for_new_repositories,
            'dependency_graph_enabled_for_new_repositories': dependency_graph_enabled_for_new_repositories,
            'secret_scanning_enabled_for_new_repositories': secret_scanning_enabled_for_new_repositories,
            'secret_scanning_push_protection_enabled_for_new_repositories': secret_scanning_push_protection_enabled_for_new_repositories,
            'secret_scanning_push_protection_custom_link_enabled': secret_scanning_push_protection_custom_link_enabled,
            'secret_scanning_push_protection_custom_link': secret_scanning_push_protection_custom_link,
            'created_at': created_at.toIso8601String(),
            'updated_at': updated_at.toIso8601String(),
            'archived_at': archived_at.toIso8601String(),
            'deploy_keys_enabled_for_repositories': deploy_keys_enabled_for_repositories,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          login,
          id,
          node_id,
          url,
          repos_url,
          events_url,
          hooks_url,
          issues_url,
          members_url,
          public_members_url,
          avatar_url,
          description,
          name,
          company,
          blog,
          location,
          email,
          twitter_username,
          is_verified,
          has_organization_projects,
          has_repository_projects,
          public_repos,
          public_gists,
          followers,
          following,
          html_url,
          type,
          total_private_repos,
          owned_private_repos,
          private_gists,
          disk_usage,
          collaborators,
          billing_email,
          plan,
          default_repository_permission,
          default_repository_branch,
          members_can_create_repositories,
          two_factor_requirement_enabled,
          members_allowed_repository_creation_type,
          members_can_create_public_repositories,
          members_can_create_private_repositories,
          members_can_create_internal_repositories,
          members_can_create_pages,
          members_can_create_public_pages,
          members_can_create_private_pages,
          members_can_delete_repositories,
          members_can_change_repo_visibility,
          members_can_invite_outside_collaborators,
          members_can_delete_issues,
          display_commenter_full_name_setting_enabled,
          readers_can_create_discussions,
          members_can_create_teams,
          members_can_view_dependency_insights,
          members_can_fork_private_repositories,
          web_commit_signoff_required,
          advanced_security_enabled_for_new_repositories,
          dependabot_alerts_enabled_for_new_repositories,
          dependabot_security_updates_enabled_for_new_repositories,
          dependency_graph_enabled_for_new_repositories,
          secret_scanning_enabled_for_new_repositories,
          secret_scanning_push_protection_enabled_for_new_repositories,
          secret_scanning_push_protection_custom_link_enabled,
          secret_scanning_push_protection_custom_link,
          created_at,
          updated_at,
          archived_at,
          deploy_keys_enabled_for_repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-full
            && login == other.login
            && id == other.id
            && node_id == other.node_id
            && url == other.url
            && repos_url == other.repos_url
            && events_url == other.events_url
            && hooks_url == other.hooks_url
            && issues_url == other.issues_url
            && members_url == other.members_url
            && public_members_url == other.public_members_url
            && avatar_url == other.avatar_url
            && description == other.description
            && name == other.name
            && company == other.company
            && blog == other.blog
            && location == other.location
            && email == other.email
            && twitter_username == other.twitter_username
            && is_verified == other.is_verified
            && has_organization_projects == other.has_organization_projects
            && has_repository_projects == other.has_repository_projects
            && public_repos == other.public_repos
            && public_gists == other.public_gists
            && followers == other.followers
            && following == other.following
            && html_url == other.html_url
            && type == other.type
            && total_private_repos == other.total_private_repos
            && owned_private_repos == other.owned_private_repos
            && private_gists == other.private_gists
            && disk_usage == other.disk_usage
            && collaborators == other.collaborators
            && billing_email == other.billing_email
            && plan == other.plan
            && default_repository_permission == other.default_repository_permission
            && default_repository_branch == other.default_repository_branch
            && members_can_create_repositories == other.members_can_create_repositories
            && two_factor_requirement_enabled == other.two_factor_requirement_enabled
            && members_allowed_repository_creation_type == other.members_allowed_repository_creation_type
            && members_can_create_public_repositories == other.members_can_create_public_repositories
            && members_can_create_private_repositories == other.members_can_create_private_repositories
            && members_can_create_internal_repositories == other.members_can_create_internal_repositories
            && members_can_create_pages == other.members_can_create_pages
            && members_can_create_public_pages == other.members_can_create_public_pages
            && members_can_create_private_pages == other.members_can_create_private_pages
            && members_can_delete_repositories == other.members_can_delete_repositories
            && members_can_change_repo_visibility == other.members_can_change_repo_visibility
            && members_can_invite_outside_collaborators == other.members_can_invite_outside_collaborators
            && members_can_delete_issues == other.members_can_delete_issues
            && display_commenter_full_name_setting_enabled == other.display_commenter_full_name_setting_enabled
            && readers_can_create_discussions == other.readers_can_create_discussions
            && members_can_create_teams == other.members_can_create_teams
            && members_can_view_dependency_insights == other.members_can_view_dependency_insights
            && members_can_fork_private_repositories == other.members_can_fork_private_repositories
            && web_commit_signoff_required == other.web_commit_signoff_required
            && advanced_security_enabled_for_new_repositories == other.advanced_security_enabled_for_new_repositories
            && dependabot_alerts_enabled_for_new_repositories == other.dependabot_alerts_enabled_for_new_repositories
            && dependabot_security_updates_enabled_for_new_repositories == other.dependabot_security_updates_enabled_for_new_repositories
            && dependency_graph_enabled_for_new_repositories == other.dependency_graph_enabled_for_new_repositories
            && secret_scanning_enabled_for_new_repositories == other.secret_scanning_enabled_for_new_repositories
            && secret_scanning_push_protection_enabled_for_new_repositories == other.secret_scanning_push_protection_enabled_for_new_repositories
            && secret_scanning_push_protection_custom_link_enabled == other.secret_scanning_push_protection_custom_link_enabled
            && secret_scanning_push_protection_custom_link == other.secret_scanning_push_protection_custom_link
            && created_at == other.created_at
            && updated_at == other.updated_at
            && archived_at == other.archived_at
            && deploy_keys_enabled_for_repositories == other.deploy_keys_enabled_for_repositories
        ;
    }
}
