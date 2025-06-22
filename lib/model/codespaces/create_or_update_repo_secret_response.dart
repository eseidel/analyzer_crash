import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_or_update_repo_secret_response.dart';
import 'package:github/model/codespaces/create_or_update_repo_secret_response.dart';

sealed class Codespaces&#x2F;createOrUpdateRepoSecretResponse {
    static Codespaces&#x2F;createOrUpdateRepoSecretResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Codespaces&#x2F;createOrUpdateRepoSecretResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createOrUpdateRepoSecretResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createOrUpdateRepoSecretResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
