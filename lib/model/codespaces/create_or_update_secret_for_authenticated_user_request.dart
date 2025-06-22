import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request_selected_repository_ids_inner.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request.dart';
import 'package:github/model/codespaces/create_or_update_secret_for_authenticated_user_request_selected_repository_ids_inner.dart';
@immutable
class Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest {
    Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest(
        {  this.encrypted_value,required this.key_id, this.selected_repository_ids = const [],
         }
    );

    factory Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest(
            encrypted_value: json['encrypted_value'] as String? ,
            key_id: json['key_id'] as String ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.map<Codespaces/createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner>((e) => Codespaces/createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner.fromJson(e as dynamic)).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? encrypted_value;
    final String  key_id;
    final  List<Codespaces/createOrUpdateSecretForAuthenticatedUserRequestSelectedRepositoryIdsInner>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'encrypted_value': encrypted_value,
            'key_id': key_id,
            'selected_repository_ids': selected_repository_ids?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          encrypted_value,
          key_id,
          selected_repository_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces&#x2F;createOrUpdateSecretForAuthenticatedUserRequest
            && encrypted_value == other.encrypted_value
            && key_id == other.key_id
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
