import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request.dart';
import 'package:github/model/users/set_primary_email_visibility_for_authenticated_user_request_visibility.dart';
@immutable
class Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest {
    Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest(
        { required this.visibility,
         }
    );

    factory Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest(
            visibility: Users/setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility.fromJson(json['visibility'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest.fromJson(json);
    }

    final Users/setPrimaryEmailVisibilityForAuthenticatedUserRequestVisibility  visibility;


    Map<String, dynamic> toJson() {
        return {
            'visibility': visibility.toJson(),
        };
    }

    @override
    int get hashCode =>
          visibility.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;setPrimaryEmailVisibilityForAuthenticatedUserRequest
            && visibility == other.visibility
        ;
    }
}
