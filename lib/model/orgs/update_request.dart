import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/update_request.dart';
import 'package:github/model/orgs/update_request_default_repository_permission.dart';
import 'package:github/model/orgs/update_request_members_allowed_repository_creation_type.dart';
import 'package:github/model/orgs/update_request.dart';
import 'package:github/model/orgs/update_request_default_repository_permission.dart';
import 'package:github/model/orgs/update_request_members_allowed_repository_creation_type.dart';
@immutable
class Orgs&#x2F;updateRequest {
    Orgs&#x2F;updateRequest(
        {  this.billing_email, this.company, this.email, this.twitter_username, this.location, this.name, this.description, this.has_organization_projects, this.has_repository_projects, this.default_repository_permission = Orgs/updateRequestDefaultRepositoryPermission.read, this.members_can_create_repositories = true, this.members_can_create_internal_repositories, this.members_can_create_private_repositories, this.members_can_create_public_repositories, this.members_allowed_repository_creation_type, this.members_can_create_pages = true, this.members_can_create_public_pages = true, this.members_can_create_private_pages = true, this.members_can_fork_private_repositories = false, this.web_commit_signoff_required = false, this.blog, this.advanced_security_enabled_for_new_repositories, this.dependabot_alerts_enabled_for_new_repositories, this.dependabot_security_updates_enabled_for_new_repositories, this.dependency_graph_enabled_for_new_repositories, this.secret_scanning_enabled_for_new_repositories, this.secret_scanning_push_protection_enabled_for_new_repositories, this.secret_scanning_push_protection_custom_link_enabled, this.secret_scanning_push_protection_custom_link, this.deploy_keys_enabled_for_repositories,
         }
    );

    factory Orgs&#x2F;updateRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;updateRequest(
            billing_email: json['billing_email'] as String? ,
            company: json['company'] as String? ,
            email: json['email'] as String? ,
            twitter_username: json['twitter_username'] as String? ,
            location: json['location'] as String? ,
            name: json['name'] as String? ,
            description: json['description'] as String? ,
            has_organization_projects: (json['has_organization_projects'] as bool?) ,
            has_repository_projects: (json['has_repository_projects'] as bool?) ,
            default_repository_permission: Orgs/updateRequestDefaultRepositoryPermission.maybeFromJson(json['default_repository_permission'] as String?) ,
            members_can_create_repositories: (json['members_can_create_repositories'] as bool?) ,
            members_can_create_internal_repositories: (json['members_can_create_internal_repositories'] as bool?) ,
            members_can_create_private_repositories: (json['members_can_create_private_repositories'] as bool?) ,
            members_can_create_public_repositories: (json['members_can_create_public_repositories'] as bool?) ,
            members_allowed_repository_creation_type: Orgs/updateRequestMembersAllowedRepositoryCreationType.maybeFromJson(json['members_allowed_repository_creation_type'] as String?) ,
            members_can_create_pages: (json['members_can_create_pages'] as bool?) ,
            members_can_create_public_pages: (json['members_can_create_public_pages'] as bool?) ,
            members_can_create_private_pages: (json['members_can_create_private_pages'] as bool?) ,
            members_can_fork_private_repositories: (json['members_can_fork_private_repositories'] as bool?) ,
            web_commit_signoff_required: (json['web_commit_signoff_required'] as bool?) ,
            blog: json['blog'] as String? ,
            advanced_security_enabled_for_new_repositories: (json['advanced_security_enabled_for_new_repositories'] as bool?) ,
            dependabot_alerts_enabled_for_new_repositories: (json['dependabot_alerts_enabled_for_new_repositories'] as bool?) ,
            dependabot_security_updates_enabled_for_new_repositories: (json['dependabot_security_updates_enabled_for_new_repositories'] as bool?) ,
            dependency_graph_enabled_for_new_repositories: (json['dependency_graph_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_enabled_for_new_repositories: (json['secret_scanning_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_push_protection_enabled_for_new_repositories: (json['secret_scanning_push_protection_enabled_for_new_repositories'] as bool?) ,
            secret_scanning_push_protection_custom_link_enabled: (json['secret_scanning_push_protection_custom_link_enabled'] as bool?) ,
            secret_scanning_push_protection_custom_link: json['secret_scanning_push_protection_custom_link'] as String? ,
            deploy_keys_enabled_for_repositories: (json['deploy_keys_enabled_for_repositories'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;updateRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;updateRequest.fromJson(json);
    }

    final  String? billing_email;
    final  String? company;
    final  String? email;
    final  String? twitter_username;
    final  String? location;
    final  String? name;
    final  String? description;
    final  bool? has_organization_projects;
    final  bool? has_repository_projects;
    final  Orgs/updateRequestDefaultRepositoryPermission? default_repository_permission;
    final  bool? members_can_create_repositories;
    final  bool? members_can_create_internal_repositories;
    final  bool? members_can_create_private_repositories;
    final  bool? members_can_create_public_repositories;
    final  Orgs/updateRequestMembersAllowedRepositoryCreationType? members_allowed_repository_creation_type;
    final  bool? members_can_create_pages;
    final  bool? members_can_create_public_pages;
    final  bool? members_can_create_private_pages;
    final  bool? members_can_fork_private_repositories;
    final  bool? web_commit_signoff_required;
    final  String? blog;
    final  bool? advanced_security_enabled_for_new_repositories;
    final  bool? dependabot_alerts_enabled_for_new_repositories;
    final  bool? dependabot_security_updates_enabled_for_new_repositories;
    final  bool? dependency_graph_enabled_for_new_repositories;
    final  bool? secret_scanning_enabled_for_new_repositories;
    final  bool? secret_scanning_push_protection_enabled_for_new_repositories;
    final  bool? secret_scanning_push_protection_custom_link_enabled;
    final  String? secret_scanning_push_protection_custom_link;
    final  bool? deploy_keys_enabled_for_repositories;


    Map<String, dynamic> toJson() {
        return {
            'billing_email': billing_email,
            'company': company,
            'email': email,
            'twitter_username': twitter_username,
            'location': location,
            'name': name,
            'description': description,
            'has_organization_projects': has_organization_projects,
            'has_repository_projects': has_repository_projects,
            'default_repository_permission': default_repository_permission?.toJson(),
            'members_can_create_repositories': members_can_create_repositories,
            'members_can_create_internal_repositories': members_can_create_internal_repositories,
            'members_can_create_private_repositories': members_can_create_private_repositories,
            'members_can_create_public_repositories': members_can_create_public_repositories,
            'members_allowed_repository_creation_type': members_allowed_repository_creation_type?.toJson(),
            'members_can_create_pages': members_can_create_pages,
            'members_can_create_public_pages': members_can_create_public_pages,
            'members_can_create_private_pages': members_can_create_private_pages,
            'members_can_fork_private_repositories': members_can_fork_private_repositories,
            'web_commit_signoff_required': web_commit_signoff_required,
            'blog': blog,
            'advanced_security_enabled_for_new_repositories': advanced_security_enabled_for_new_repositories,
            'dependabot_alerts_enabled_for_new_repositories': dependabot_alerts_enabled_for_new_repositories,
            'dependabot_security_updates_enabled_for_new_repositories': dependabot_security_updates_enabled_for_new_repositories,
            'dependency_graph_enabled_for_new_repositories': dependency_graph_enabled_for_new_repositories,
            'secret_scanning_enabled_for_new_repositories': secret_scanning_enabled_for_new_repositories,
            'secret_scanning_push_protection_enabled_for_new_repositories': secret_scanning_push_protection_enabled_for_new_repositories,
            'secret_scanning_push_protection_custom_link_enabled': secret_scanning_push_protection_custom_link_enabled,
            'secret_scanning_push_protection_custom_link': secret_scanning_push_protection_custom_link,
            'deploy_keys_enabled_for_repositories': deploy_keys_enabled_for_repositories,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          billing_email,
          company,
          email,
          twitter_username,
          location,
          name,
          description,
          has_organization_projects,
          has_repository_projects,
          default_repository_permission,
          members_can_create_repositories,
          members_can_create_internal_repositories,
          members_can_create_private_repositories,
          members_can_create_public_repositories,
          members_allowed_repository_creation_type,
          members_can_create_pages,
          members_can_create_public_pages,
          members_can_create_private_pages,
          members_can_fork_private_repositories,
          web_commit_signoff_required,
          blog,
          advanced_security_enabled_for_new_repositories,
          dependabot_alerts_enabled_for_new_repositories,
          dependabot_security_updates_enabled_for_new_repositories,
          dependency_graph_enabled_for_new_repositories,
          secret_scanning_enabled_for_new_repositories,
          secret_scanning_push_protection_enabled_for_new_repositories,
          secret_scanning_push_protection_custom_link_enabled,
          secret_scanning_push_protection_custom_link,
          deploy_keys_enabled_for_repositories,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;updateRequest
            && billing_email == other.billing_email
            && company == other.company
            && email == other.email
            && twitter_username == other.twitter_username
            && location == other.location
            && name == other.name
            && description == other.description
            && has_organization_projects == other.has_organization_projects
            && has_repository_projects == other.has_repository_projects
            && default_repository_permission == other.default_repository_permission
            && members_can_create_repositories == other.members_can_create_repositories
            && members_can_create_internal_repositories == other.members_can_create_internal_repositories
            && members_can_create_private_repositories == other.members_can_create_private_repositories
            && members_can_create_public_repositories == other.members_can_create_public_repositories
            && members_allowed_repository_creation_type == other.members_allowed_repository_creation_type
            && members_can_create_pages == other.members_can_create_pages
            && members_can_create_public_pages == other.members_can_create_public_pages
            && members_can_create_private_pages == other.members_can_create_private_pages
            && members_can_fork_private_repositories == other.members_can_fork_private_repositories
            && web_commit_signoff_required == other.web_commit_signoff_required
            && blog == other.blog
            && advanced_security_enabled_for_new_repositories == other.advanced_security_enabled_for_new_repositories
            && dependabot_alerts_enabled_for_new_repositories == other.dependabot_alerts_enabled_for_new_repositories
            && dependabot_security_updates_enabled_for_new_repositories == other.dependabot_security_updates_enabled_for_new_repositories
            && dependency_graph_enabled_for_new_repositories == other.dependency_graph_enabled_for_new_repositories
            && secret_scanning_enabled_for_new_repositories == other.secret_scanning_enabled_for_new_repositories
            && secret_scanning_push_protection_enabled_for_new_repositories == other.secret_scanning_push_protection_enabled_for_new_repositories
            && secret_scanning_push_protection_custom_link_enabled == other.secret_scanning_push_protection_custom_link_enabled
            && secret_scanning_push_protection_custom_link == other.secret_scanning_push_protection_custom_link
            && deploy_keys_enabled_for_repositories == other.deploy_keys_enabled_for_repositories
        ;
    }
}
