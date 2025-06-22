import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/short-branch.dart';
import 'package:github/model/short-branch_commit.dart';
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
import 'package:github/model/short-branch.dart';
import 'package:github/model/short-branch_commit.dart';
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
class Short-branch {
    Short-branch(
        { required this.name,required this.commit,required this.protected, this.protection, this.protection_url,
         }
    );

    factory Short-branch.fromJson(Map<String, dynamic>
        json) {
        return Short-branch(
            name: json['name'] as String ,
            commit: Short-branchCommit.fromJson(json['commit'] as Map<String, dynamic>) ,
            protected: (json['protected'] as bool) ,
            protection: Branch-protection.maybeFromJson(json['protection'] as Map<String, dynamic>?) ,
            protection_url: json['protection_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Short-branch? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Short-branch.fromJson(json);
    }

    final String  name;
    final Short-branchCommit  commit;
    final bool  protected;
    final  Branch-protection? protection;
    final  String? protection_url;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'commit': commit.toJson(),
            'protected': protected,
            'protection': protection?.toJson(),
            'protection_url': protection_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          commit,
          protected,
          protection,
          protection_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Short-branch
            && name == other.name
            && commit == other.commit
            && protected == other.protected
            && protection == other.protection
            && protection_url == other.protection_url
        ;
    }
}
