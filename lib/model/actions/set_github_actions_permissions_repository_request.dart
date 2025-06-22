import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/set_github_actions_permissions_repository_request.dart';
import 'package:github/model/allowed-actions.dart';
import 'package:github/model/actions/set_github_actions_permissions_repository_request.dart';
import 'package:github/model/allowed-actions.dart';
@immutable
class Actions&#x2F;setGithubActionsPermissionsRepositoryRequest {
    Actions&#x2F;setGithubActionsPermissionsRepositoryRequest(
        { required this.enabled, this.allowed_actions,
         }
    );

    factory Actions&#x2F;setGithubActionsPermissionsRepositoryRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;setGithubActionsPermissionsRepositoryRequest(
            enabled: (json['enabled'] as bool) ,
            allowed_actions: Allowed-actions.maybeFromJson(json['allowed_actions'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;setGithubActionsPermissionsRepositoryRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;setGithubActionsPermissionsRepositoryRequest.fromJson(json);
    }

    final bool  enabled;
    final  Allowed-actions? allowed_actions;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
            'allowed_actions': allowed_actions?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled,
          allowed_actions,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;setGithubActionsPermissionsRepositoryRequest
            && enabled == other.enabled
            && allowed_actions == other.allowed_actions
        ;
    }
}
