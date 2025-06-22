import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/list_contributors_response.dart';
import 'package:github/model/contributor.dart';
import 'package:github/model/repos/list_contributors_response.dart';
import 'package:github/model/contributor.dart';

sealed class Repos&#x2F;listContributorsResponse {
    static Repos&#x2F;listContributorsResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Repos&#x2F;listContributorsResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;listContributorsResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;listContributorsResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
