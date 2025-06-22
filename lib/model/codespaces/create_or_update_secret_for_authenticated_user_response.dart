import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_response.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_response.dart';

sealed class Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserResponse {
    static Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
