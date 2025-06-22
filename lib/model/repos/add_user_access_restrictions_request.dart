import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/add_user_access_restrictions_request.dart';
import 'package:github/model/repos/add_user_access_restrictions_request.dart';
@immutable
class Repos&#x2F;addUserAccessRestrictionsRequest {
    Repos&#x2F;addUserAccessRestrictionsRequest(
        {  this.users = const [],
         }
    );

    factory Repos&#x2F;addUserAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;addUserAccessRestrictionsRequest(
            users: (json['users'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;addUserAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;addUserAccessRestrictionsRequest.fromJson(json);
    }

    final List<String>  users;


    Map<String, dynamic> toJson() {
        return {
            'users': users,
        };
    }

    @override
    int get hashCode =>
          users.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;addUserAccessRestrictionsRequest
            && listsEqual(users, other.users)
        ;
    }
}
