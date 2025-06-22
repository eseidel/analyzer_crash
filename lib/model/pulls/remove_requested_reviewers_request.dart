import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/remove_requested_reviewers_request.dart';
import 'package:github/model/pulls/remove_requested_reviewers_request.dart';
@immutable
class Pulls&#x2F;removeRequestedReviewersRequest {
    Pulls&#x2F;removeRequestedReviewersRequest(
        {  this.reviewers = const [], this.team_reviewers = const [],
         }
    );

    factory Pulls&#x2F;removeRequestedReviewersRequest.fromJson(Map<String, dynamic>
        json) {
        return Pulls&#x2F;removeRequestedReviewersRequest(
            reviewers: (json['reviewers'] as List).cast<String>() ,
            team_reviewers: (json['team_reviewers'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;removeRequestedReviewersRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;removeRequestedReviewersRequest.fromJson(json);
    }

    final List<String>  reviewers;
    final  List<String>? team_reviewers;


    Map<String, dynamic> toJson() {
        return {
            'reviewers': reviewers,
            'team_reviewers': team_reviewers,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          reviewers,
          team_reviewers,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pulls&#x2F;removeRequestedReviewersRequest
            && listsEqual(reviewers, other.reviewers)
            && listsEqual(team_reviewers, other.team_reviewers)
        ;
    }
}
