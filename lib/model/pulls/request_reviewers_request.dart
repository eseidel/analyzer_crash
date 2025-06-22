import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pulls/request_reviewers_request.dart';
import 'package:github/model/pulls/request_reviewers_request.dart';

sealed class Pulls&#x2F;requestReviewersRequest {
    static Pulls&#x2F;requestReviewersRequest fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Pulls&#x2F;requestReviewersRequest.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pulls&#x2F;requestReviewersRequest? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Pulls&#x2F;requestReviewersRequest.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
