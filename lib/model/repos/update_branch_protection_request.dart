import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_branch_protection_request.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/repos/update_branch_protection_request_restrictions.dart';
import 'package:github/model/repos/update_branch_protection_request.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks.dart';
import 'package:github/model/repos/update_branch_protection_request_required_status_checks_checks_inner.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_dismissal_restrictions.dart';
import 'package:github/model/repos/update_branch_protection_request_required_pull_request_reviews_bypass_pull_request_allowances.dart';
import 'package:github/model/repos/update_branch_protection_request_restrictions.dart';
@immutable
class Repos&#x2F;updateBranchProtectionRequest {
    Repos&#x2F;updateBranchProtectionRequest(
        { required this.required_status_checks,required this.enforce_admins,required this.required_pull_request_reviews,required this.restrictions, this.required_linear_history, this.allow_force_pushes, this.allow_deletions, this.block_creations, this.required_conversation_resolution, this.lock_branch = false, this.allow_fork_syncing = false,
         }
    );

    factory Repos&#x2F;updateBranchProtectionRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updateBranchProtectionRequest(
            required_status_checks: Repos/updateBranchProtectionRequestRequiredStatusChecks.fromJson(json['required_status_checks'] as Map<String, dynamic>) ,
            enforce_admins: (json['enforce_admins'] as bool) ,
            required_pull_request_reviews: Repos/updateBranchProtectionRequestRequiredPullRequestReviews.fromJson(json['required_pull_request_reviews'] as Map<String, dynamic>) ,
            restrictions: Repos/updateBranchProtectionRequestRestrictions.fromJson(json['restrictions'] as Map<String, dynamic>) ,
            required_linear_history: (json['required_linear_history'] as bool?) ,
            allow_force_pushes: (json['allow_force_pushes'] as bool?) ,
            allow_deletions: (json['allow_deletions'] as bool?) ,
            block_creations: (json['block_creations'] as bool?) ,
            required_conversation_resolution: (json['required_conversation_resolution'] as bool?) ,
            lock_branch: (json['lock_branch'] as bool?) ,
            allow_fork_syncing: (json['allow_fork_syncing'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updateBranchProtectionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updateBranchProtectionRequest.fromJson(json);
    }

    final Repos/updateBranchProtectionRequestRequiredStatusChecks  required_status_checks;
    final bool  enforce_admins;
    final Repos/updateBranchProtectionRequestRequiredPullRequestReviews  required_pull_request_reviews;
    final Repos/updateBranchProtectionRequestRestrictions  restrictions;
    final  bool? required_linear_history;
    final  bool? allow_force_pushes;
    final  bool? allow_deletions;
    final  bool? block_creations;
    final  bool? required_conversation_resolution;
    final  bool? lock_branch;
    final  bool? allow_fork_syncing;


    Map<String, dynamic> toJson() {
        return {
            'required_status_checks': required_status_checks.toJson(),
            'enforce_admins': enforce_admins,
            'required_pull_request_reviews': required_pull_request_reviews.toJson(),
            'restrictions': restrictions.toJson(),
            'required_linear_history': required_linear_history,
            'allow_force_pushes': allow_force_pushes,
            'allow_deletions': allow_deletions,
            'block_creations': block_creations,
            'required_conversation_resolution': required_conversation_resolution,
            'lock_branch': lock_branch,
            'allow_fork_syncing': allow_fork_syncing,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          required_status_checks,
          enforce_admins,
          required_pull_request_reviews,
          restrictions,
          required_linear_history,
          allow_force_pushes,
          allow_deletions,
          block_creations,
          required_conversation_resolution,
          lock_branch,
          allow_fork_syncing,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updateBranchProtectionRequest
            && required_status_checks == other.required_status_checks
            && enforce_admins == other.enforce_admins
            && required_pull_request_reviews == other.required_pull_request_reviews
            && restrictions == other.restrictions
            && required_linear_history == other.required_linear_history
            && allow_force_pushes == other.allow_force_pushes
            && allow_deletions == other.allow_deletions
            && block_creations == other.block_creations
            && required_conversation_resolution == other.required_conversation_resolution
            && lock_branch == other.lock_branch
            && allow_fork_syncing == other.allow_fork_syncing
        ;
    }
}
