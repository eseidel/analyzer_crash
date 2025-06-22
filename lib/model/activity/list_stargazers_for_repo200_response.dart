import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/list_stargazers_for_repo200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/stargazer.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/activity/list_stargazers_for_repo200_response.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/stargazer.dart';
import 'package:github/model/nullable-simple-user.dart';

sealed class Activity&#x2F;listStargazersForRepo200Response {
    static Activity&#x2F;listStargazersForRepo200Response fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Activity&#x2F;listStargazersForRepo200Response.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;listStargazersForRepo200Response? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;listStargazersForRepo200Response.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
