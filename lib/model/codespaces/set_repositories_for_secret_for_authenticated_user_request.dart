import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/set_repositories_for_secret_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/set_repositories_for_secret_for_authenticated_user_request.dart';
@immutable
class Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest {
    Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest(
        {  this.selected_repository_ids = const [],
         }
    );

    factory Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest(
            selected_repository_ids: (json['selected_repository_ids'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest.fromJson(json);
    }

    final List<int>  selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
          selected_repository_ids.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;setRepositoriesForSecretForAuthenticatedUserRequest
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
