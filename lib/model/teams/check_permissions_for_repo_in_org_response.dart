import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/check_permissions_for_repo_in_org_response.dart';
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/teams/check_permissions_for_repo_in_org_response.dart';
import 'package:github/model/team-repository.dart';
import 'package:github/model/nullable-license-simple.dart';
import 'package:github/model/team-repository_permissions.dart';
import 'package:github/model/nullable-simple-user.dart';

sealed class Teams&#x2F;checkPermissionsForRepoInOrgResponse {
    static Teams&#x2F;checkPermissionsForRepoInOrgResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Teams&#x2F;checkPermissionsForRepoInOrgResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;checkPermissionsForRepoInOrgResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;checkPermissionsForRepoInOrgResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
