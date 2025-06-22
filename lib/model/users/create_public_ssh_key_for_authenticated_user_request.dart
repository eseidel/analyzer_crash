import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/create_public_ssh_key_for_authenticated_user_request.dart';
import 'package:github/model/users/create_public_ssh_key_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest {
    Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest(
        {  this.title,required this.key,
         }
    );

    factory Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest(
            title: json['title'] as String? ,
            key: json['key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest.fromJson(json);
    }

    final  String? title;
    final String  key;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'key': key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;createPublicSshKeyForAuthenticatedUserRequest
            && title == other.title
            && key == other.key
        ;
    }
}
