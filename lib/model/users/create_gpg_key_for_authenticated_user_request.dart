import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/create_gpg_key_for_authenticated_user_request.dart';
import 'package:github/model/users/create_gpg_key_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;createGpgKeyForAuthenticatedUserRequest {
    Users&#x2F;createGpgKeyForAuthenticatedUserRequest(
        {  this.name,required this.armored_public_key,
         }
    );

    factory Users&#x2F;createGpgKeyForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;createGpgKeyForAuthenticatedUserRequest(
            name: json['name'] as String? ,
            armored_public_key: json['armored_public_key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;createGpgKeyForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;createGpgKeyForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? name;
    final String  armored_public_key;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'armored_public_key': armored_public_key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          armored_public_key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;createGpgKeyForAuthenticatedUserRequest
            && name == other.name
            && armored_public_key == other.armored_public_key
        ;
    }
}
