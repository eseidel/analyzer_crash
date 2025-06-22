import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request_visibility.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request.dart';
import 'package:github/model/dependabot/create_or_update_org_secret_request_visibility.dart';
@immutable
class Dependabot&#x2F;createOrUpdateOrgSecretRequest {
    Dependabot&#x2F;createOrUpdateOrgSecretRequest(
        {  this.encrypted_value, this.key_id,required this.visibility, this.selected_repository_ids = const [],
         }
    );

    factory Dependabot&#x2F;createOrUpdateOrgSecretRequest.fromJson(Map<String, dynamic>
        json) {
        return Dependabot&#x2F;createOrUpdateOrgSecretRequest(
            encrypted_value: json['encrypted_value'] as String? ,
            key_id: json['key_id'] as String? ,
            visibility: Dependabot/createOrUpdateOrgSecretRequestVisibility.fromJson(json['visibility'] as String) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependabot&#x2F;createOrUpdateOrgSecretRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependabot&#x2F;createOrUpdateOrgSecretRequest.fromJson(json);
    }

    final  String? encrypted_value;
    final  String? key_id;
    final Dependabot/createOrUpdateOrgSecretRequestVisibility  visibility;
    final  List<String>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'encrypted_value': encrypted_value,
            'key_id': key_id,
            'visibility': visibility.toJson(),
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          encrypted_value,
          key_id,
          visibility,
          selected_repository_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependabot&#x2F;createOrUpdateOrgSecretRequest
            && encrypted_value == other.encrypted_value
            && key_id == other.key_id
            && visibility == other.visibility
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
