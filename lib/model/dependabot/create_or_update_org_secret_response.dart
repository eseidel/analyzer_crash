import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_response.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_response.dart';

sealed class Dependabot&#x2F;createOrUpdateOrgSecretResponse {
    static Dependabot&#x2F;createOrUpdateOrgSecretResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Dependabot&#x2F;createOrUpdateOrgSecretResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;createOrUpdateOrgSecretResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;createOrUpdateOrgSecretResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
