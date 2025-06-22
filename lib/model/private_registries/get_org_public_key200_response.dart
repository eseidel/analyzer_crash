import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/private_registries/get_org_public_key200_response.dart';
import 'package:github/model/private_registries/get_org_public_key200_response.dart';
@immutable
class PrivateRegistries&#x2F;getOrgPublicKey200Response {
    PrivateRegistries&#x2F;getOrgPublicKey200Response(
        { required this.key_id,required this.key,
         }
    );

    factory PrivateRegistries&#x2F;getOrgPublicKey200Response.fromJson(Map<String, dynamic>
        json) {
        return PrivateRegistries&#x2F;getOrgPublicKey200Response(
            key_id: json['key_id'] as String ,
            key: json['key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static PrivateRegistries&#x2F;getOrgPublicKey200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return PrivateRegistries&#x2F;getOrgPublicKey200Response.fromJson(json);
    }

    final String  key_id;
    final String  key;


    Map<String, dynamic> toJson() {
        return {
            'key_id': key_id,
            'key': key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          key_id,
          key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is PrivateRegistries&#x2F;getOrgPublicKey200Response
            && key_id == other.key_id
            && key == other.key
        ;
    }
}
