import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_environment_request.dart';
import 'package:github/model/repos/create_or_update_environment_request_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
import 'package:github/model/repos/create_or_update_environment_request.dart';
import 'package:github/model/repos/create_or_update_environment_request_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/deployment-branch-policy-settings.dart';
@immutable
class Repos&#x2F;createOrUpdateEnvironmentRequest {
    Repos&#x2F;createOrUpdateEnvironmentRequest(
        {  this.wait_timer, this.prevent_self_review, this.reviewers = const [], this.deployment_branch_policy,
         }
    );

    factory Repos&#x2F;createOrUpdateEnvironmentRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createOrUpdateEnvironmentRequest(
            wait_timer: (json['wait_timer'] as int?).toInt() ,
            prevent_self_review: (json['prevent_self_review'] as bool?) ,
            reviewers: (json['reviewers'] as List?)?.map<Repos/createOrUpdateEnvironmentRequestReviewersInner>((e) => Repos/createOrUpdateEnvironmentRequestReviewersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            deployment_branch_policy: Deployment-branch-policy-settings.maybeFromJson(json['deployment_branch_policy'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateEnvironmentRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateEnvironmentRequest.fromJson(json);
    }

    final  int? wait_timer;
    final  bool? prevent_self_review;
    final  List<Repos/createOrUpdateEnvironmentRequestReviewersInner>? reviewers;
    final  Deployment-branch-policy-settings? deployment_branch_policy;


    Map<String, dynamic> toJson() {
        return {
            'wait_timer': wait_timer,
            'prevent_self_review': prevent_self_review,
            'reviewers': reviewers?.map((e) => e.toJson()).toList(),
            'deployment_branch_policy': deployment_branch_policy?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          wait_timer,
          prevent_self_review,
          reviewers,
          deployment_branch_policy,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createOrUpdateEnvironmentRequest
            && wait_timer == other.wait_timer
            && prevent_self_review == other.prevent_self_review
            && listsEqual(reviewers, other.reviewers)
            && deployment_branch_policy == other.deployment_branch_policy
        ;
    }
}
