import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pending-deployment.dart';
import 'package:github/model/pending-deployment_environment.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pending-deployment.dart';
import 'package:github/model/pending-deployment_environment.dart';
import 'package:github/model/pending-deployment_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
@immutable
class Pending-deployment {
    Pending-deployment(
        { required this.environment,required this.wait_timer,required this.wait_timer_started_at,required this.current_user_can_approve, this.reviewers = const [],
         }
    );

    factory Pending-deployment.fromJson(Map<String, dynamic>
        json) {
        return Pending-deployment(
            environment: Pending-deploymentEnvironment.fromJson(json['environment'] as Map<String, dynamic>) ,
            wait_timer: (json['wait_timer'] as int).toInt() ,
            wait_timer_started_at: DateTime.parse(json['wait_timer_started_at'] as String),
            current_user_can_approve: (json['current_user_can_approve'] as bool) ,
            reviewers: (json['reviewers'] as List).map<Pending-deploymentReviewersInner>((e) => Pending-deploymentReviewersInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pending-deployment? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pending-deployment.fromJson(json);
    }

    final Pending-deploymentEnvironment  environment;
    final int  wait_timer;
    final DateTime  wait_timer_started_at;
    final bool  current_user_can_approve;
    final List<Pending-deploymentReviewersInner>  reviewers;


    Map<String, dynamic> toJson() {
        return {
            'environment': environment.toJson(),
            'wait_timer': wait_timer,
            'wait_timer_started_at': wait_timer_started_at.toIso8601String(),
            'current_user_can_approve': current_user_can_approve,
            'reviewers': reviewers.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          environment,
          wait_timer,
          wait_timer_started_at,
          current_user_can_approve,
          reviewers,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pending-deployment
            && environment == other.environment
            && wait_timer == other.wait_timer
            && wait_timer_started_at == other.wait_timer_started_at
            && current_user_can_approve == other.current_user_can_approve
            && listsEqual(reviewers, other.reviewers)
        ;
    }
}
