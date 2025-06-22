import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/set_app_access_restrictions_request.dart';
import 'package:github/model/repos/set_app_access_restrictions_request.dart';
@immutable
class Repos&#x2F;setAppAccessRestrictionsRequest {
    Repos&#x2F;setAppAccessRestrictionsRequest(
        {  this.apps = const [],
         }
    );

    factory Repos&#x2F;setAppAccessRestrictionsRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;setAppAccessRestrictionsRequest(
            apps: (json['apps'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;setAppAccessRestrictionsRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;setAppAccessRestrictionsRequest.fromJson(json);
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
        return other is Repos&#x2F;setAppAccessRestrictionsRequest
            && listsEqual(apps, other.apps)
        ;
    }
}
