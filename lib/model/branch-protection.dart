import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
import 'package:github/model/branch-protection.dart';
import 'package:github/model/protected-branch-required-status-check.dart';
import 'package:github/model/protected-branch-required-status-check_checks_inner.dart';
import 'package:github/model/protected-branch-admin-enforced.dart';
import 'package:github/model/protected-branch-pull-request-review.dart';
import 'package:github/model/protected-branch-pull-request-review_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch-pull-request-review_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/branch-protection_required_linear_history.dart';
import 'package:github/model/branch-protection_allow_force_pushes.dart';
import 'package:github/model/branch-protection_allow_deletions.dart';
import 'package:github/model/branch-protection_block_creations.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_signatures.dart';
import 'package:github/model/branch-protection_lock_branch.dart';
import 'package:github/model/branch-protection_allow_fork_syncing.dart';
@immutable
class Branch-protection {
    Branch-protection(
        {  this.url, this.enabled, this.required_status_checks, this.enforce_admins, this.required_pull_request_reviews, this.restrictions, this.required_linear_history, this.allow_force_pushes, this.allow_deletions, this.block_creations, this.required_conversation_resolution, this.name, this.protection_url, this.required_signatures, this.lock_branch, this.allow_fork_syncing,
         }
    );

    factory Branch-protection.fromJson(Map<String, dynamic>
        json) {
        return Branch-protection(
            url: json['url'] as String? ,
            enabled: (json['enabled'] as bool?) ,
            required_status_checks: Protected-branch-required-status-check.maybeFromJson(json['required_status_checks'] as Map<String, dynamic>?) ,
            enforce_admins: Protected-branch-admin-enforced.maybeFromJson(json['enforce_admins'] as Map<String, dynamic>?) ,
            required_pull_request_reviews: Protected-branch-pull-request-review.maybeFromJson(json['required_pull_request_reviews'] as Map<String, dynamic>?) ,
            restrictions: Branch-restriction-policy.maybeFromJson(json['restrictions'] as Map<String, dynamic>?) ,
            required_linear_history: Branch-protectionRequiredLinearHistory.maybeFromJson(json['required_linear_history'] as Map<String, dynamic>?) ,
            allow_force_pushes: Branch-protectionAllowForcePushes.maybeFromJson(json['allow_force_pushes'] as Map<String, dynamic>?) ,
            allow_deletions: Branch-protectionAllowDeletions.maybeFromJson(json['allow_deletions'] as Map<String, dynamic>?) ,
            block_creations: Branch-protectionBlockCreations.maybeFromJson(json['block_creations'] as Map<String, dynamic>?) ,
            required_conversation_resolution: Branch-protectionRequiredConversationResolution.maybeFromJson(json['required_conversation_resolution'] as Map<String, dynamic>?) ,
            name: json['name'] as String? ,
            protection_url: json['protection_url'] as String? ,
            required_signatures: Branch-protectionRequiredSignatures.maybeFromJson(json['required_signatures'] as Map<String, dynamic>?) ,
            lock_branch: Branch-protectionLockBranch.maybeFromJson(json['lock_branch'] as Map<String, dynamic>?) ,
            allow_fork_syncing: Branch-protectionAllowForkSyncing.maybeFromJson(json['allow_fork_syncing'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protection? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protection.fromJson(json);
    }

    final  String? url;
    final  bool? enabled;
    final  Protected-branch-required-status-check? required_status_checks;
    final  Protected-branch-admin-enforced? enforce_admins;
    final  Protected-branch-pull-request-review? required_pull_request_reviews;
    final  Branch-restriction-policy? restrictions;
    final  Branch-protectionRequiredLinearHistory? required_linear_history;
    final  Branch-protectionAllowForcePushes? allow_force_pushes;
    final  Branch-protectionAllowDeletions? allow_deletions;
    final  Branch-protectionBlockCreations? block_creations;
    final  Branch-protectionRequiredConversationResolution? required_conversation_resolution;
    final  String? name;
    final  String? protection_url;
    final  Branch-protectionRequiredSignatures? required_signatures;
    final  Branch-protectionLockBranch? lock_branch;
    final  Branch-protectionAllowForkSyncing? allow_fork_syncing;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'enabled': enabled,
            'required_status_checks': required_status_checks?.toJson(),
            'enforce_admins': enforce_admins?.toJson(),
            'required_pull_request_reviews': required_pull_request_reviews?.toJson(),
            'restrictions': restrictions?.toJson(),
            'required_linear_history': required_linear_history?.toJson(),
            'allow_force_pushes': allow_force_pushes?.toJson(),
            'allow_deletions': allow_deletions?.toJson(),
            'block_creations': block_creations?.toJson(),
            'required_conversation_resolution': required_conversation_resolution?.toJson(),
            'name': name,
            'protection_url': protection_url,
            'required_signatures': required_signatures?.toJson(),
            'lock_branch': lock_branch?.toJson(),
            'allow_fork_syncing': allow_fork_syncing?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          enabled,
          required_status_checks,
          enforce_admins,
          required_pull_request_reviews,
          restrictions,
          required_linear_history,
          allow_force_pushes,
          allow_deletions,
          block_creations,
          required_conversation_resolution,
          name,
          protection_url,
          required_signatures,
          lock_branch,
          allow_fork_syncing,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-protection
            && url == other.url
            && enabled == other.enabled
            && required_status_checks == other.required_status_checks
            && enforce_admins == other.enforce_admins
            && required_pull_request_reviews == other.required_pull_request_reviews
            && restrictions == other.restrictions
            && required_linear_history == other.required_linear_history
            && allow_force_pushes == other.allow_force_pushes
            && allow_deletions == other.allow_deletions
            && block_creations == other.block_creations
            && required_conversation_resolution == other.required_conversation_resolution
            && name == other.name
            && protection_url == other.protection_url
            && required_signatures == other.required_signatures
            && lock_branch == other.lock_branch
            && allow_fork_syncing == other.allow_fork_syncing
        ;
    }
}
