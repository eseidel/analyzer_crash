import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/get_pages_health_check_response.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';
import 'package:github/model/repos/get_pages_health_check_response.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';

sealed class Repos&#x2F;getPagesHealthCheckResponse {
    static Repos&#x2F;getPagesHealthCheckResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;getPagesHealthCheckResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;getPagesHealthCheckResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;getPagesHealthCheckResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
