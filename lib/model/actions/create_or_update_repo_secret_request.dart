import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_or_update_repo_secret_request.dart';
import 'package:github/model/actions/create_or_update_repo_secret_request.dart';
@immutable
class Actions&#x2F;createOrUpdateRepoSecretRequest {
    Actions&#x2F;createOrUpdateRepoSecretRequest(
        { required this.encrypted_value,required this.key_id,
         }
    );

    factory Actions&#x2F;createOrUpdateRepoSecretRequest.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createOrUpdateRepoSecretRequest(
            encrypted_value: json['encrypted_value'] as String ,
            key_id: json['key_id'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createOrUpdateRepoSecretRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createOrUpdateRepoSecretRequest.fromJson(json);
    }

    final String  encrypted_value;
    final String  key_id;


    Map<String, dynamic> toJson() {
        return {
            'encrypted_value': encrypted_value,
            'key_id': key_id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          encrypted_value,
          key_id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createOrUpdateRepoSecretRequest
            && encrypted_value == other.encrypted_value
            && key_id == other.key_id
        ;
    }
}
