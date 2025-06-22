import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/get_contributors_stats_response.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';
import 'package:github/model/repos/get_contributors_stats_response.dart';
import 'package:github/model/contributor-activity.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/contributor-activity_weeks_inner.dart';

sealed class Repos&#x2F;getContributorsStatsResponse {
    static Repos&#x2F;getContributorsStatsResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;getContributorsStatsResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;getContributorsStatsResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;getContributorsStatsResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
