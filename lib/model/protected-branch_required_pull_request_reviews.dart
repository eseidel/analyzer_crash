import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Protected-branchRequiredPullRequestReviews {
    Protected-branchRequiredPullRequestReviews(
        { required this.url, this.dismiss_stale_reviews, this.require_code_owner_reviews, this.required_approving_review_count, this.require_last_push_approval = false, this.dismissal_restrictions, this.bypass_pull_request_allowances,
         }
    );

    factory Protected-branchRequiredPullRequestReviews.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchRequiredPullRequestReviews(
            url: json['url'] as String ,
            dismiss_stale_reviews: (json['dismiss_stale_reviews'] as bool?) ,
            require_code_owner_reviews: (json['require_code_owner_reviews'] as bool?) ,
            required_approving_review_count: (json['required_approving_review_count'] as int?).toInt() ,
            require_last_push_approval: (json['require_last_push_approval'] as bool?) ,
            dismissal_restrictions: Protected-branchRequiredPullRequestReviewsDismissalRestrictions.maybeFromJson(json['dismissal_restrictions'] as Map<String, dynamic>?) ,
            bypass_pull_request_allowances: Protected-branchRequiredPullRequestReviewsBypassPullRequestAllowances.maybeFromJson(json['bypass_pull_request_allowances'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchRequiredPullRequestReviews? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchRequiredPullRequestReviews.fromJson(json);
    }

    final String  url;
    final  bool? dismiss_stale_reviews;
    final  bool? require_code_owner_reviews;
    final  int? required_approving_review_count;
    final  bool? require_last_push_approval;
    final  Protected-branchRequiredPullRequestReviewsDismissalRestrictions? dismissal_restrictions;
    final  Protected-branchRequiredPullRequestReviewsBypassPullRequestAllowances? bypass_pull_request_allowances;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'dismiss_stale_reviews': dismiss_stale_reviews,
            'require_code_owner_reviews': require_code_owner_reviews,
            'required_approving_review_count': required_approving_review_count,
            'require_last_push_approval': require_last_push_approval,
            'dismissal_restrictions': dismissal_restrictions?.toJson(),
            'bypass_pull_request_allowances': bypass_pull_request_allowances?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          dismiss_stale_reviews,
          require_code_owner_reviews,
          required_approving_review_count,
          require_last_push_approval,
          dismissal_restrictions,
          bypass_pull_request_allowances,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branchRequiredPullRequestReviews
            && url == other.url
            && dismiss_stale_reviews == other.dismiss_stale_reviews
            && require_code_owner_reviews == other.require_code_owner_reviews
            && required_approving_review_count == other.required_approving_review_count
            && require_last_push_approval == other.require_last_push_approval
            && dismissal_restrictions == other.dismissal_restrictions
            && bypass_pull_request_allowances == other.bypass_pull_request_allowances
        ;
    }
}
