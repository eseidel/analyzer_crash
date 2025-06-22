import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private_registries/create_org_private_registry_request.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_registry_type.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_visibility.dart';
import 'package:github/model/private_registries/create_org_private_registry_request.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_registry_type.dart';
import 'package:github/model/private_registries/create_org_private_registry_request_visibility.dart';
@immutable
class PrivateRegistries&#x2F;createOrgPrivateRegistryRequest {
    PrivateRegistries&#x2F;createOrgPrivateRegistryRequest(
        { required this.registry_type, this.username,required this.encrypted_value,required this.key_id,required this.visibility, this.selected_repository_ids = const [],
         }
    );

    factory PrivateRegistries&#x2F;createOrgPrivateRegistryRequest.fromJson(Map<String, dynamic>
        json) {
        return PrivateRegistries&#x2F;createOrgPrivateRegistryRequest(
            registry_type: PrivateRegistries/createOrgPrivateRegistryRequestRegistryType.fromJson(json['registry_type'] as String) ,
            username: json['username'] as String? ,
            encrypted_value: json['encrypted_value'] as String ,
            key_id: json['key_id'] as String ,
            visibility: PrivateRegistries/createOrgPrivateRegistryRequestVisibility.fromJson(json['visibility'] as String) ,
            selected_repository_ids: (json['selected_repository_ids'] as List?)?.cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static PrivateRegistries&#x2F;createOrgPrivateRegistryRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return PrivateRegistries&#x2F;createOrgPrivateRegistryRequest.fromJson(json);
    }

    final PrivateRegistries/createOrgPrivateRegistryRequestRegistryType  registry_type;
    final  String? username;
    final String  encrypted_value;
    final String  key_id;
    final PrivateRegistries/createOrgPrivateRegistryRequestVisibility  visibility;
    final  List<int>? selected_repository_ids;


    Map<String, dynamic> toJson() {
        return {
            'registry_type': registry_type.toJson(),
            'username': username,
            'encrypted_value': encrypted_value,
            'key_id': key_id,
            'visibility': visibility.toJson(),
            'selected_repository_ids': selected_repository_ids,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          registry_type,
          username,
          encrypted_value,
          key_id,
          visibility,
          selected_repository_ids,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is PrivateRegistries&#x2F;createOrgPrivateRegistryRequest
            && registry_type == other.registry_type
            && username == other.username
            && encrypted_value == other.encrypted_value
            && key_id == other.key_id
            && visibility == other.visibility
            && listsEqual(selected_repository_ids, other.selected_repository_ids)
        ;
    }
}
