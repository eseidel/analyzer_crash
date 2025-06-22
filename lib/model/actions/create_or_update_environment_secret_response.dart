import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_or_update_environment_secret_response.dart';
import 'package:github/model/actions/create_or_update_environment_secret_response.dart';

sealed class Actions&#x2F;createOrUpdateEnvironmentSecretResponse {
    static Actions&#x2F;createOrUpdateEnvironmentSecretResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Actions&#x2F;createOrUpdateEnvironmentSecretResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createOrUpdateEnvironmentSecretResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createOrUpdateEnvironmentSecretResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
