import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org403_response.dart';
import 'package:github/model/teams/add_or_update_project_permissions_in_org403_response.dart';
@immutable
class Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response {
    Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response(
        {  this.message, this.documentation_url,
         }
    );

    factory Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response.fromJson(Map<String, dynamic>
        json) {
        return Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response(
            message: json['message'] as String? ,
            documentation_url: json['documentation_url'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response.fromJson(json);
    }

    final  String? message;
    final  String? documentation_url;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'documentation_url': documentation_url,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          documentation_url,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Teams&#x2F;addOrUpdateProjectPermissionsInOrg403Response
            && message == other.message
            && documentation_url == other.documentation_url
        ;
    }
}
