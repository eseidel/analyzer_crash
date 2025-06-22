import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/delete_email_for_authenticated_user_request.dart';
import 'package:github/model/users/delete_email_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;deleteEmailForAuthenticatedUserRequest {
    Users&#x2F;deleteEmailForAuthenticatedUserRequest(
        {  this.emails = const [],
         }
    );

    factory Users&#x2F;deleteEmailForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;deleteEmailForAuthenticatedUserRequest(
            emails: (json['emails'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;deleteEmailForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;deleteEmailForAuthenticatedUserRequest.fromJson(json);
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
        return other is Users&#x2F;deleteEmailForAuthenticatedUserRequest
            && listsEqual(emails, other.emails)
        ;
    }
}
