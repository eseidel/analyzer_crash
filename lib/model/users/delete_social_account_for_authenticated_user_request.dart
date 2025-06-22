import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/delete_social_account_for_authenticated_user_request.dart';
import 'package:github/model/users/delete_social_account_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest {
    Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest(
        {  this.account_urls = const [],
         }
    );

    factory Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest(
            account_urls: (json['account_urls'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest.fromJson(json);
    }

    final List<String>  account_urls;


    Map<String, dynamic> toJson() {
        return {
            'account_urls': account_urls,
        };
    }

    @override
    int get hashCode =>
          account_urls.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Users&#x2F;deleteSocialAccountForAuthenticatedUserRequest
            && listsEqual(account_urls, other.account_urls)
        ;
    }
}
