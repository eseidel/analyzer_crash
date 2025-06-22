import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request_selected_repository_ids_inner.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request_selected_repository_ids_inner.dart';

sealed class Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner {
    static Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
