import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_github_actions_permissions_organization_request.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/actions/set_github_actions_permissions_organization_request.dart';
import 'package:github/model/enabled-repositories.dart';
import 'package:github/model/allowed-actions.dart';
@immutable
class Actions&#x2F;setGithubActionsPermissionsOrganizationRequest {
    Actions&#x2F;setGithubActionsPermissionsOrganizationRequest(
        { required this.enabled_repositories, this.allowed_actions,
         }
    );

    factory Actions&#x2F;setGithubActionsPermissionsOrganizationRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setGithubActionsPermissionsOrganizationRequest(
            enabled_repositories: Enabled-repositories.fromJson(json['enabled_repositories'] as String) ,
            allowed_actions: Allowed-actions.maybeFromJson(json['allowed_actions'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setGithubActionsPermissionsOrganizationRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setGithubActionsPermissionsOrganizationRequest.fromJson(json);
    }

    final Enabled-repositories  enabled_repositories;
    final  Allowed-actions? allowed_actions;


    Map<String, dynamic> toJson() {
        return {
            'enabled_repositories': enabled_repositories.toJson(),
            'allowed_actions': allowed_actions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled_repositories,
          allowed_actions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setGithubActionsPermissionsOrganizationRequest
            && enabled_repositories == other.enabled_repositories
            && allowed_actions == other.allowed_actions
        ;
    }
}
