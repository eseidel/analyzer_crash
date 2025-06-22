import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
import 'package:github/model/team-organization.dart';
import 'package:github/model/team-organization_plan.dart';
@immutable
class Team-organization {
    Team-organization(
        { required this.login,required this.id,required this.node_id,required this.url,required this.repos_url,required this.events_url,required this.hooks_url,required this.issues_url,required this.members_url,required this.public_members_url,required this.avatar_url,required this.description, this.name, this.company, this.blog, this.location, this.email, this.twitter_username, this.is_verified,required this.has_organization_projects,required this.has_repository_projects,required this.public_repos,required this.public_gists,required this.followers,required this.following,required this.html_url,required this.created_at,required this.type, this.total_private_repos, this.owned_private_repos, this.private_gists, this.disk_usage, this.collaborators, this.billing_email, this.plan, this.default_repository_permission, this.members_can_create_repositories, this.two_factor_requirement_enabled, this.members_allowed_repository_creation_type, this.members_can_create_public_repositories, this.members_can_create_private_repositories, this.members_can_create_internal_repositories, this.members_can_create_pages, this.members_can_create_public_pages, this.members_can_create_private_pages, this.members_can_fork_private_repositories, this.web_commit_signoff_required,required this.updated_at,required this.archived_at,
         }
    );

    factory Team-organization.fromJson(Map<String, dynamic>
        json) {
        return Team-organization(
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
            created_at: DateTime.parse(json['created_at'] as String),
            type: json['type'] as String ,
            total_private_repos: (json['total_private_repos'] as int?).toInt() ,
            owned_private_repos: (json['owned_private_repos'] as int?).toInt() ,
            private_gists: (json['private_gists'] as int?).toInt() ,
            disk_usage: (json['disk_usage'] as int?).toInt() ,
            collaborators: (json['collaborators'] as int?).toInt() ,
            billing_email: json['billing_email'] as String? ,
            plan: Team-organizationPlan.maybeFromJson(json['plan'] as Map<String, dynamic>?) ,
            default_repository_permission: json['default_repository_permission'] as String? ,
            members_can_create_repositories: (json['members_can_create_repositories'] as bool?) ,
            two_factor_requirement_enabled: (json['two_factor_requirement_enabled'] as bool?) ,
            members_allowed_repository_creation_type: json['members_allowed_repository_creation_type'] as String? ,
            members_can_create_public_repositories: (json['members_can_create_public_repositories'] as bool?) ,
            members_can_create_private_repositories: (json['members_can_create_private_repositories'] as bool?) ,
            members_can_create_internal_repositories: (json['members_can_create_internal_repositories'] as bool?) ,
            members_can_create_pages: (json['members_can_create_pages'] as bool?) ,
            members_can_create_public_pages: (json['members_can_create_public_pages'] as bool?) ,
            members_can_create_private_pages: (json['members_can_create_private_pages'] as bool?) ,
            members_can_fork_private_repositories: (json['members_can_fork_private_repositories'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
            updated_at: DateTime.parse(json['updated_at'] as String),
            archived_at: DateTime.parse(json['archived_at'] as String),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Team-organization? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Team-organization.fromJson(json);
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
    final DateTime  created_at;
    final String  type;
    final  int? total_private_repos;
    final  int? owned_private_repos;
    final  int? private_gists;
    final  int? disk_usage;
    final  int? collaborators;
    final  String? billing_email;
    final  Team-organizationPlan? plan;
    final  String? default_repository_permission;
    final  bool? members_can_create_repositories;
    final  bool? two_factor_requirement_enabled;
    final  String? members_allowed_repository_creation_type;
    final  bool? members_can_create_public_repositories;
    final  bool? members_can_create_private_repositories;
    final  bool? members_can_create_internal_repositories;
    final  bool? members_can_create_pages;
    final  bool? members_can_create_public_pages;
    final  bool? members_can_create_private_pages;
    final  bool? members_can_fork_private_repositories;
    final  bool? web_commit_signoff_required;
    final DateTime  updated_at;
    final DateTime  archived_at;


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
            'created_at': created_at.toIso8601String(),
            'type': type,
            'total_private_repos': total_private_repos,
            'owned_private_repos': owned_private_repos,
            'private_gists': private_gists,
            'disk_usage': disk_usage,
            'collaborators': collaborators,
            'billing_email': billing_email,
            'plan': plan?.toJson(),
            'default_repository_permission': default_repository_permission,
            'members_can_create_repositories': members_can_create_repositories,
            'two_factor_requirement_enabled': two_factor_requirement_enabled,
            'members_allowed_repository_creation_type': members_allowed_repository_creation_type,
            'members_can_create_public_repositories': members_can_create_public_repositories,
            'members_can_create_private_repositories': members_can_create_private_repositories,
            'members_can_create_internal_repositories': members_can_create_internal_repositories,
            'members_can_create_pages': members_can_create_pages,
            'members_can_create_public_pages': members_can_create_public_pages,
            'members_can_create_private_pages': members_can_create_private_pages,
            'members_can_fork_private_repositories': members_can_fork_private_repositories,
            'web_commit_signoff_required': web_commit_signoff_required,
            'updated_at': updated_at.toIso8601String(),
            'archived_at': archived_at.toIso8601String(),
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
          created_at,
          type,
          total_private_repos,
          owned_private_repos,
          private_gists,
          disk_usage,
          collaborators,
          billing_email,
          plan,
          default_repository_permission,
          members_can_create_repositories,
          two_factor_requirement_enabled,
          members_allowed_repository_creation_type,
          members_can_create_public_repositories,
          members_can_create_private_repositories,
          members_can_create_internal_repositories,
          members_can_create_pages,
          members_can_create_public_pages,
          members_can_create_private_pages,
          members_can_fork_private_repositories,
          web_commit_signoff_required,
          updated_at,
          archived_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Team-organization
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
            && created_at == other.created_at
            && type == other.type
            && total_private_repos == other.total_private_repos
            && owned_private_repos == other.owned_private_repos
            && private_gists == other.private_gists
            && disk_usage == other.disk_usage
            && collaborators == other.collaborators
            && billing_email == other.billing_email
            && plan == other.plan
            && default_repository_permission == other.default_repository_permission
            && members_can_create_repositories == other.members_can_create_repositories
            && two_factor_requirement_enabled == other.two_factor_requirement_enabled
            && members_allowed_repository_creation_type == other.members_allowed_repository_creation_type
            && members_can_create_public_repositories == other.members_can_create_public_repositories
            && members_can_create_private_repositories == other.members_can_create_private_repositories
            && members_can_create_internal_repositories == other.members_can_create_internal_repositories
            && members_can_create_pages == other.members_can_create_pages
            && members_can_create_public_pages == other.members_can_create_public_pages
            && members_can_create_private_pages == other.members_can_create_private_pages
            && members_can_fork_private_repositories == other.members_can_fork_private_repositories
            && web_commit_signoff_required == other.web_commit_signoff_required
            && updated_at == other.updated_at
            && archived_at == other.archived_at
        ;
    }
}
