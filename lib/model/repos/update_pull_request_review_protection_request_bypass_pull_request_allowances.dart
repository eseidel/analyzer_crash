import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_bypass_pull_request_allowances.dart';
import 'package:github/model/repos/update_pull_request_review_protection_request_bypass_pull_request_allowances.dart';
@immutable
class Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances {
    Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances(
        {  this.users = const [], this.teams = const [], this.apps = const [],
         }
    );

    factory Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances(
            users: (json['users'] as List?)?.cast<String>() ,
            teams: (json['teams'] as List?)?.cast<String>() ,
            apps: (json['apps'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances.fromJson(json);
    }

    final  List<String>? users;
    final  List<String>? teams;
    final  List<String>? apps;


    Map<String, dynamic> toJson() {
        return {
            'users': users,
            'teams': teams,
            'apps': apps,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          users,
          teams,
          apps,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;updatePullRequestReviewProtectionRequestBypassPullRequestAllowances
            && listsEqual(users, other.users)
            && listsEqual(teams, other.teams)
            && listsEqual(apps, other.apps)
        ;
    }
}
