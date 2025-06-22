import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_dismissal_restrictions.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_bypass_pull_request_allowances.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_dismissal_restrictions.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_bypass_pull_request_allowances.dart';
@immutable
class Repos&#x2F;updatePullRequestReviewProtectionRequest {
    Repos&#x2F;updatePullRequestReviewProtectionRequest(
        {  this.dismissal_restrictions, this.dismiss_stale_reviews, this.require_code_owner_reviews, this.required_approving_review_count, this.require_last_push_approval = false, this.bypass_pull_request_allowances,
         }
    );

    factory Repos&#x2F;updatePullRequestReviewProtectionRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updatePullRequestReviewProtectionRequest(
            dismissal_restrictions: Repos/updatePullRequestReviewProtectionRequestDismissalRestrictions.maybeFromJson(json['dismissal_restrictions'] as Map<String, dynamic>?) ,
            dismiss_stale_reviews: (json['dismiss_stale_reviews'] as bool?) ,
            require_code_owner_reviews: (json['require_code_owner_reviews'] as bool?) ,
            required_approving_review_count: (json['required_approving_review_count'] as int?).toInt() ,
            require_last_push_approval: (json['require_last_push_approval'] as bool?) ,
            bypass_pull_request_allowances: Repos/updatePullRequestReviewProtectionRequestBypassPullRequestAllowances.maybeFromJson(json['bypass_pull_request_allowances'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updatePullRequestReviewProtectionRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updatePullRequestReviewProtectionRequest.fromJson(json);
    }

    final  Repos/updatePullRequestReviewProtectionRequestDismissalRestrictions? dismissal_restrictions;
    final  bool? dismiss_stale_reviews;
    final  bool? require_code_owner_reviews;
    final  int? required_approving_review_count;
    final  bool? require_last_push_approval;
    final  Repos/updatePullRequestReviewProtectionRequestBypassPullRequestAllowances? bypass_pull_request_allowances;


    Map<String, dynamic> toJson() {
        return {
            'dismissal_restrictions': dismissal_restrictions?.toJson(),
            'dismiss_stale_reviews': dismiss_stale_reviews,
            'require_code_owner_reviews': require_code_owner_reviews,
            'required_approving_review_count': required_approving_review_count,
            'require_last_push_approval': require_last_push_approval,
            'bypass_pull_request_allowances': bypass_pull_request_allowances?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          dismissal_restrictions,
          dismiss_stale_reviews,
          require_code_owner_reviews,
          required_approving_review_count,
          require_last_push_approval,
          bypass_pull_request_allowances,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updatePullRequestReviewProtectionRequest
            && dismissal_restrictions == other.dismissal_restrictions
            && dismiss_stale_reviews == other.dismiss_stale_reviews
            && require_code_owner_reviews == other.require_code_owner_reviews
            && required_approving_review_count == other.required_approving_review_count
            && require_last_push_approval == other.require_last_push_approval
            && bypass_pull_request_allowances == other.bypass_pull_request_allowances
        ;
    }
}
