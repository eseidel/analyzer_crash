import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/pending-deployment_reviewers_inner_reviewer.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';

sealed class Pending-deploymentReviewersInnerReviewer {
    static Pending-deploymentReviewersInnerReviewer fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Pending-deploymentReviewersInnerReviewer.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pending-deploymentReviewersInnerReviewer? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Pending-deploymentReviewersInnerReviewer.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
