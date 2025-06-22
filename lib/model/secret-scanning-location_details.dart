import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';

sealed class Secret-scanning-locationDetails {
    static Secret-scanning-locationDetails fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Secret-scanning-locationDetails.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-locationDetails? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-locationDetails.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
