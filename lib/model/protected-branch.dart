import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
import 'package:github/model/protected-branch_enforce_admins.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
import 'package:github/model/protected-branch_block_creations.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
import 'package:github/model/protected-branch.dart';
import 'package:github/model/status-check-policy.dart';
import 'package:github/model/status-check-policy_checks_inner.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/integration_owner.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/enterprise.dart';
import 'package:github/model/integration_permissions.dart';
import 'package:github/model/protected-branch_required_signatures.dart';
import 'package:github/model/protected-branch_enforce_admins.dart';
import 'package:github/model/protected-branch_required_linear_history.dart';
import 'package:github/model/protected-branch_allow_force_pushes.dart';
import 'package:github/model/protected-branch_allow_deletions.dart';
import 'package:github/model/branch-restriction-policy.dart';
import 'package:github/model/branch-restriction-policy_users_inner.dart';
import 'package:github/model/branch-restriction-policy_teams_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_owner.dart';
import 'package:github/model/branch-restriction-policy_apps_inner_permissions.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
import 'package:github/model/protected-branch_block_creations.dart';
import 'package:github/model/protected-branch_lock_branch.dart';
import 'package:github/model/protected-branch_allow_fork_syncing.dart';
@immutable
class Protected-branch {
    Protected-branch(
        { required this.url, this.required_status_checks, this.required_pull_request_reviews, this.required_signatures, this.enforce_admins, this.required_linear_history, this.allow_force_pushes, this.allow_deletions, this.restrictions, this.required_conversation_resolution, this.block_creations, this.lock_branch, this.allow_fork_syncing,
         }
    );

    factory Protected-branch.fromJson(Map<String, dynamic>
        json) {
        return Protected-branch(
            url: json['url'] as String ,
            required_status_checks: Status-check-policy.maybeFromJson(json['required_status_checks'] as Map<String, dynamic>?) ,
            required_pull_request_reviews: Protected-branchRequiredPullRequestReviews.maybeFromJson(json['required_pull_request_reviews'] as Map<String, dynamic>?) ,
            required_signatures: Protected-branchRequiredSignatures.maybeFromJson(json['required_signatures'] as Map<String, dynamic>?) ,
            enforce_admins: Protected-branchEnforceAdmins.maybeFromJson(json['enforce_admins'] as Map<String, dynamic>?) ,
            required_linear_history: Protected-branchRequiredLinearHistory.maybeFromJson(json['required_linear_history'] as Map<String, dynamic>?) ,
            allow_force_pushes: Protected-branchAllowForcePushes.maybeFromJson(json['allow_force_pushes'] as Map<String, dynamic>?) ,
            allow_deletions: Protected-branchAllowDeletions.maybeFromJson(json['allow_deletions'] as Map<String, dynamic>?) ,
            restrictions: Branch-restriction-policy.maybeFromJson(json['restrictions'] as Map<String, dynamic>?) ,
            required_conversation_resolution: Protected-branchRequiredConversationResolution.maybeFromJson(json['required_conversation_resolution'] as Map<String, dynamic>?) ,
            block_creations: Protected-branchBlockCreations.maybeFromJson(json['block_creations'] as Map<String, dynamic>?) ,
            lock_branch: Protected-branchLockBranch.maybeFromJson(json['lock_branch'] as Map<String, dynamic>?) ,
            allow_fork_syncing: Protected-branchAllowForkSyncing.maybeFromJson(json['allow_fork_syncing'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branch? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branch.fromJson(json);
    }

    final String  url;
    final  Status-check-policy? required_status_checks;
    final  Protected-branchRequiredPullRequestReviews? required_pull_request_reviews;
    final  Protected-branchRequiredSignatures? required_signatures;
    final  Protected-branchEnforceAdmins? enforce_admins;
    final  Protected-branchRequiredLinearHistory? required_linear_history;
    final  Protected-branchAllowForcePushes? allow_force_pushes;
    final  Protected-branchAllowDeletions? allow_deletions;
    final  Branch-restriction-policy? restrictions;
    final  Protected-branchRequiredConversationResolution? required_conversation_resolution;
    final  Protected-branchBlockCreations? block_creations;
    final  Protected-branchLockBranch? lock_branch;
    final  Protected-branchAllowForkSyncing? allow_fork_syncing;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'required_status_checks': required_status_checks?.toJson(),
            'required_pull_request_reviews': required_pull_request_reviews?.toJson(),
            'required_signatures': required_signatures?.toJson(),
            'enforce_admins': enforce_admins?.toJson(),
            'required_linear_history': required_linear_history?.toJson(),
            'allow_force_pushes': allow_force_pushes?.toJson(),
            'allow_deletions': allow_deletions?.toJson(),
            'restrictions': restrictions?.toJson(),
            'required_conversation_resolution': required_conversation_resolution?.toJson(),
            'block_creations': block_creations?.toJson(),
            'lock_branch': lock_branch?.toJson(),
            'allow_fork_syncing': allow_fork_syncing?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          required_status_checks,
          required_pull_request_reviews,
          required_signatures,
          enforce_admins,
          required_linear_history,
          allow_force_pushes,
          allow_deletions,
          restrictions,
          required_conversation_resolution,
          block_creations,
          lock_branch,
          allow_fork_syncing,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branch
            && url == other.url
            && required_status_checks == other.required_status_checks
            && required_pull_request_reviews == other.required_pull_request_reviews
            && required_signatures == other.required_signatures
            && enforce_admins == other.enforce_admins
            && required_linear_history == other.required_linear_history
            && allow_force_pushes == other.allow_force_pushes
            && allow_deletions == other.allow_deletions
            && restrictions == other.restrictions
            && required_conversation_resolution == other.required_conversation_resolution
            && block_creations == other.block_creations
            && lock_branch == other.lock_branch
            && allow_fork_syncing == other.allow_fork_syncing
        ;
    }
}
