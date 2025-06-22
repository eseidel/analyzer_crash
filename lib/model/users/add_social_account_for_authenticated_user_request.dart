import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/users/add_social_account_for_authenticated_user_request.dart';
import 'package:github/model/users/add_social_account_for_authenticated_user_request.dart';
@immutable
class Users&#x2F;addSocialAccountForAuthenticatedUserRequest {
    Users&#x2F;addSocialAccountForAuthenticatedUserRequest(
        {  this.account_urls = const [],
         }
    );

    factory Users&#x2F;addSocialAccountForAuthenticatedUserRequest.fromJson(Map<String, dynamic>
        json) {
        return Users&#x2F;addSocialAccountForAuthenticatedUserRequest(
            account_urls: (json['account_urls'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Users&#x2F;addSocialAccountForAuthenticatedUserRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Users&#x2F;addSocialAccountForAuthenticatedUserRequest.fromJson(json);
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
        return other is Users&#x2F;addSocialAccountForAuthenticatedUserRequest
            && listsEqual(account_urls, other.account_urls)
        ;
    }
}
