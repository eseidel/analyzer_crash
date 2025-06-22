import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/add_email_for_authenticated_user_request.dart';
import 'package:github/model/users/add_email_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;addEmailForAuthenticatedUserRequest {
    Users&#x2F;addEmailForAuthenticatedUserRequest(
        {  this.emails = const [],
         }
    );

    factory Users&#x2F;addEmailForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;addEmailForAuthenticatedUserRequest(
            emails: (json['emails'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;addEmailForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;addEmailForAuthenticatedUserRequest.fromJson(json);
    }

    final List<String>  emails;


    Map<String, dynamic> toJson() {
        return {
            'emails': emails,
        };
    }

    @override
    int get hashCode =>
          emails.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;addEmailForAuthenticatedUserRequest
            && listsEqual(emails, other.emails)
        ;
    }
}
