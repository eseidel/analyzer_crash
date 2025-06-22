import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
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
import 'package:github/model/branch-with-protection.dart';
import 'package:github/model/commit.dart';
import 'package:github/model/commit_commit.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/nullable-git-user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:github/model/commit_author.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_committer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/commit_parents_inner.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/diff-entry.dart';
import 'package:github/model/diff-entry_status.dart';
import 'package:github/model/branch-with-protection_links.dart';
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
class Branch-with-protection {
    Branch-with-protection(
        { required this.name,required this.commit,required this._links,required this.protected,required this.protection,required this.protection_url, this.pattern, this.required_approving_review_count,
         }
    );

    factory Branch-with-protection.fromJson(Map<String, dynamic>
        json) {
        return Branch-with-protection(
            name: json['name'] as String ,
            commit: Commit.fromJson(json['commit'] as Map<String, dynamic>) ,
            _links: Branch-with-protectionLinks.fromJson(json['_links'] as Map<String, dynamic>) ,
            protected: (json['protected'] as bool) ,
            protection: Branch-protection.fromJson(json['protection'] as Map<String, dynamic>) ,
            protection_url: json['protection_url'] as String ,
            pattern: json['pattern'] as String? ,
            required_approving_review_count: (json['required_approving_review_count'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-with-protection? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-with-protection.fromJson(json);
    }

    final String  name;
    final Commit  commit;
    final Branch-with-protectionLinks  _links;
    final bool  protected;
    final Branch-protection  protection;
    final String  protection_url;
    final  String? pattern;
    final  int? required_approving_review_count;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'commit': commit.toJson(),
            '_links': _links.toJson(),
            'protected': protected,
            'protection': protection.toJson(),
            'protection_url': protection_url,
            'pattern': pattern,
            'required_approving_review_count': required_approving_review_count,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          commit,
          _links,
          protected,
          protection,
          protection_url,
          pattern,
          required_approving_review_count,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Branch-with-protection
            && name == other.name
            && commit == other.commit
            && _links == other._links
            && protected == other.protected
            && protection == other.protection
            && protection_url == other.protection_url
            && pattern == other.pattern
            && required_approving_review_count == other.required_approving_review_count
        ;
    }
}
