import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/remove_app_access_restrictions_request.dart';
import 'package:github/model/repos/remove_app_access_restrictions_request.dart';
@immutable
class Repos&#x2F;removeAppAccessRestrictionsRequest {
    Repos&#x2F;removeAppAccessRestrictionsRequest(
        {  this.apps = const [],
         }
    );

    factory Repos&#x2F;removeAppAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;removeAppAccessRestrictionsRequest(
            apps: (json['apps'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;removeAppAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;removeAppAccessRestrictionsRequest.fromJson(json);
    }

    final List<String>  apps;


    Map<String, dynamic> toJson() {
        return {
            'apps': apps,
        };
    }

    @override
    int get hashCode =>
          apps.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;removeAppAccessRestrictionsRequest
            && listsEqual(apps, other.apps)
        ;
    }
}
