import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
@immutable
class Pending-deploymentReviewersInner {
    Pending-deploymentReviewersInner(
        {  this.type, this.reviewer,
         }
    );

    factory Pending-deploymentReviewersInner.fromJson(Map<String, dynamic>
        json) {
        return Pending-deploymentReviewersInner(
            type: Deployment-reviewer-type.maybeFromJson(json['type'] as String?) ,
            reviewer: Pending-deploymentReviewersInnerReviewer.maybeFromJson(json['reviewer'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pending-deploymentReviewersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pending-deploymentReviewersInner.fromJson(json);
    }

    final  Deployment-reviewer-type? type;
    final  Pending-deploymentReviewersInnerReviewer? reviewer;


    Map<String, dynamic> toJson() {
        return {
            'type': type?.toJson(),
            'reviewer': reviewer?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          reviewer,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pending-deploymentReviewersInner
            && type == other.type
            && reviewer == other.reviewer
        ;
    }
}
