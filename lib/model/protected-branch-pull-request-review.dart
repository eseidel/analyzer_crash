import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
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
@immutable
class Protected-branch-pull-request-review {
    Protected-branch-pull-request-review(
        {  this.url, this.dismissal_restrictions, this.bypass_pull_request_allowances,required this.dismiss_stale_reviews,required this.require_code_owner_reviews, this.required_approving_review_count, this.require_last_push_approval = false,
         }
    );

    factory Protected-branch-pull-request-review.fromJson(Map<String, dynamic>
        json) {
        return Protected-branch-pull-request-review(
            url: json['url'] as String? ,
            dismissal_restrictions: Protected-branch-pull-request-reviewDismissalRestrictions.maybeFromJson(json['dismissal_restrictions'] as Map<String, dynamic>?) ,
            bypass_pull_request_allowances: Protected-branch-pull-request-reviewBypassPullRequestAllowances.maybeFromJson(json['bypass_pull_request_allowances'] as Map<String, dynamic>?) ,
            dismiss_stale_reviews: (json['dismiss_stale_reviews'] as bool) ,
            require_code_owner_reviews: (json['require_code_owner_reviews'] as bool) ,
            required_approving_review_count: (json['required_approving_review_count'] as int?).toInt() ,
            require_last_push_approval: (json['require_last_push_approval'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branch-pull-request-review? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branch-pull-request-review.fromJson(json);
    }

    final  String? url;
    final  Protected-branch-pull-request-reviewDismissalRestrictions? dismissal_restrictions;
    final  Protected-branch-pull-request-reviewBypassPullRequestAllowances? bypass_pull_request_allowances;
    final bool  dismiss_stale_reviews;
    final bool  require_code_owner_reviews;
    final  int? required_approving_review_count;
    final  bool? require_last_push_approval;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'dismissal_restrictions': dismissal_restrictions?.toJson(),
            'bypass_pull_request_allowances': bypass_pull_request_allowances?.toJson(),
            'dismiss_stale_reviews': dismiss_stale_reviews,
            'require_code_owner_reviews': require_code_owner_reviews,
            'required_approving_review_count': required_approving_review_count,
            'require_last_push_approval': require_last_push_approval,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          dismissal_restrictions,
          bypass_pull_request_allowances,
          dismiss_stale_reviews,
          require_code_owner_reviews,
          required_approving_review_count,
          require_last_push_approval,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branch-pull-request-review
            && url == other.url
            && dismissal_restrictions == other.dismissal_restrictions
            && bypass_pull_request_allowances == other.bypass_pull_request_allowances
            && dismiss_stale_reviews == other.dismiss_stale_reviews
            && require_code_owner_reviews == other.require_code_owner_reviews
            && required_approving_review_count == other.required_approving_review_count
            && require_last_push_approval == other.require_last_push_approval
        ;
    }
}
